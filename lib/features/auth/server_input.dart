import 'package:abs_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final protocolProvider = StateProvider<String>((ref) => 'https://');
final domainProvider = StateProvider<String>((ref) => '');
final portProvider = StateProvider<String>((ref) => '443');
final isInputValidProvider = StateProvider<bool>((ref) => false);

class ServerInput extends ConsumerStatefulWidget {
  final Function(String, String, String) onValidInput;

  const ServerInput({super.key, required this.onValidInput});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ServerInputState();
}

class _ServerInputState extends ConsumerState<ServerInput> {
  late TextEditingController domainController;
  late TextEditingController portController;

  @override
  void initState() {
    super.initState();
    domainController = TextEditingController(text: ref.read(domainProvider));
    portController = TextEditingController(text: ref.read(portProvider));

    domainController.addListener(() {
      ref.read(domainProvider.notifier).state = domainController.text;
      validateInput();
    });
    portController.addListener(() {
      ref.read(portProvider.notifier).state = portController.text;
      validateInput();
    });
  }

  void validateInput() {
    final domain = ref.read(domainProvider).trim();
    final port = ref.read(portProvider).trim();
    final portValid = int.tryParse(port) != null && int.parse(port) > 0 && int.parse(port) <= 65535;
    final domainValid = domain.isNotEmpty;
    final domainRegex = RegExp(r'^(?=.{1,253}$)(?:(?!-)[A-Za-z0-9-]{1,63}(?<!-)\.?)+[A-Za-z]{2,63}$');
    final ipv4Regex = RegExp(r'^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$');
    final ipv6Regex = RegExp(r'^(?:[A-Fa-f0-9]{1,4}:){7}[A-Fa-f0-9]{1,4}$|^(?:[A-Fa-f0-9]{1,4}:){1,7}:$|^(?:[A-Fa-f0-9]{1,4}:){1,6}:[A-Fa-f0-9]{1,4}$|^(?:[A-Fa-f0-9]{1,4}:){1,5}(?::[A-Fa-f0-9]{1,4}){1,2}$|^(?:[A-Fa-f0-9]{1,4}:){1,4}(?::[A-Fa-f0-9]{1,4}){1,3}$|^(?:[A-Fa-f0-9]{1,4}:){1,3}(?::[A-Fa-f0-9]{1,4}){1,4}$|^(?:[A-Fa-f0-9]{1,4}:){1,2}(?::[A-Fa-f0-9]{1,4}){1,5}$|^[A-Fa-f0-9]{1,4}:(?:(?::[A-Fa-f0-9]{1,4}){1,6})$|^(?::(?::[A-Fa-f0-9]{1,4}){1,7}|:)$');

    final domainFormatValid = domainRegex.hasMatch(domain) || ipv4Regex.hasMatch(domain) || ipv6Regex.hasMatch(domain);

    if (domainValid && portValid && domainFormatValid) {
      ref.read(isInputValidProvider.notifier).state = true;
      widget.onValidInput(ref.read(protocolProvider), domain, port);
    } else {
      ref.read(isInputValidProvider.notifier).state = false;
    }
  }

  @override
  void dispose() {
    domainController.dispose();
    portController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ProtocolDropdown(
          onChanged: (String newValue) {
            ref.read(protocolProvider.notifier).state = newValue;
            validateInput();
          },
        ),
        Expanded(
          child: DomainInputField(controller: domainController),
        ),
        const PortSeparator(),
        PortInputField(controller: portController),
      ],
    );
  }
}

class ProtocolDropdown extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const ProtocolDropdown({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        border: Border.all(color: Colors.grey),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: 'https://',
          items: <String>['http://', 'https://'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(value),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            if (newValue != null) onChanged(newValue);
          },
        ),
      ),
    );
  }
}

class DomainInputField extends StatelessWidget {
  final TextEditingController controller;

  const DomainInputField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey),
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: PlatformTextField(
        controller: controller,
        hintText: S.of(context).domainOrIp,
        material: (_, __) => MaterialTextFieldData(
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
          ),
        ),
        cupertino: (_, __) => CupertinoTextFieldData(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
        ),
      ),
    );
  }
}

class PortSeparator extends StatelessWidget {
  const PortSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 50,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(color: Colors.grey),
          top: BorderSide(color: Colors.grey),
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: const Text(':'),
    );
  }
}

class PortInputField extends StatelessWidget {
  final TextEditingController controller;

  const PortInputField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        border: Border.all(color: Colors.grey),
      ),
      child: PlatformTextField(
        controller: controller,
        keyboardType: TextInputType.number,
        hintText: S.of(context).port,
        material: (_, __) => MaterialTextFieldData(
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
          ),
        ),
        cupertino: (_, __) => CupertinoTextFieldData(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
        ),
      ),
    );
  }
}
