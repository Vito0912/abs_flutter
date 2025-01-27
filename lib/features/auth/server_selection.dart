import 'dart:developer';

import 'package:abs_flutter/api/me/login.dart';
import 'package:abs_flutter/api/me/request/login_request.dart';
import 'package:abs_flutter/features/auth/server_input.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/models/login_form.dart';
import 'package:abs_flutter/models/server.dart';
import 'package:abs_flutter/models/setting.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final loginFormProvider =
    StateNotifierProvider.autoDispose<LoginFormNotifier, LoginFormState>(
  (ref) => LoginFormNotifier(ref),
);

class LoginFormNotifier extends StateNotifier<LoginFormState> {
  final Ref ref;
  LoginFormNotifier(this.ref)
      : super(LoginFormState(subdirectory: '/audiobookshelf'));

  void updateUsername(String value) => state = state.copyWith(username: value);
  void updatePassword(String value) => state = state.copyWith(password: value);
  void updateServerDetails(String protocol, String domain, String port) =>
      state = state.copyWith(protocol: protocol, domain: domain, port: port);
  void toggleSubdomain(bool value) => state = state.copyWith(
        subdirectory: value ? '/audiobookshelf' : null,
      );
  void updateSubdirectory(String value) =>
      state = state.copyWith(subdirectory: value);

  void addHeader(String key, String value) =>
      state = state.copyWith(headers: {...(state.headers ?? {}), key: value});

  void updateHeader(String oldKey, String newKey, String newValue) {
    final newHeaders = {...(state.headers ?? {})}..remove(oldKey);
    newHeaders[newKey] = newValue;
    state = state.copyWith(headers: newHeaders);
  }

  void removeHeader(String key) {
    Map<String, String> newHeaders = {};
    if (state.headers == null) return;
    for (final entry in state.headers!.entries) {
      if (entry.key != key) {
        newHeaders[entry.key] = entry.value;
      }
    }
    state = state.copyWith(headers: newHeaders);
  }

  Future<void> submit(BuildContext context) async {
    if (!state.isValid) {
      state = state.copyWith(
        status: FormStatus.error,
        errorMessage: S.of(context).requiredFields,
      );
      return;
    }

    state = state.copyWith(status: FormStatus.loading, errorMessage: null);

    try {
      final server = Server(
        ssl: state.protocol == 'https://',
        host: state.domain,
        port: int.tryParse(state.port) ?? 443,
        subdirectory: state.subdirectory,
        headers: state.headers,
      );

      setBasePathOverride(ref, [server.url, state.headers]);

      if (server.subdirectory != null && server.subdirectory!.startsWith('/')) {
        server.subdirectory = server.subdirectory!.substring(1);
      }

      final response = await ref.read(apiProviderNew)!.getMeApi().login(
            loginRequest: LoginRequest(
              username: state.username.trim(),
              password: state.password.trim(),
            ),
          );

      _handleLoginResponse(context, response, server);
    } on DioException catch (e) {
      _handleDioError(context, e);
    } catch (e, stackTrace) {
      log("Login Error: $e\n$stackTrace");
      state = state.copyWith(
        status: FormStatus.error,
        errorMessage: S.of(context).anUnknownErrorOccurred,
      );
    }
  }

  void _handleLoginResponse(
      BuildContext context, Response<Login> response, Server server) {
    final user = response.data?.user;
    if (user == null || !context.mounted) {
      state = state.copyWith(
        status: FormStatus.error,
        errorMessage: S.of(context).invalidCredentials,
      );
      return;
    }

    user.server = server;
    user.setting ??= Setting()..settings = defaultSettings;

    ref.read(usersProvider.notifier).addUser(user);
    ref.read(selectedUserProvider.notifier).state =
        ref.read(usersProvider).length - 1;

    if (context.mounted) {
      state = state.copyWith(status: FormStatus.success);
      context.go('/');
    }
  }

  void _handleDioError(BuildContext context, DioException e) {
    final message = switch (e.response?.statusCode) {
      401 => S.of(context).invalidCredentials,
      404 => S.of(context).serverNotFound,
      _ => e.message ?? S.of(context).connectionError,
    };

    state = state.copyWith(
      status: FormStatus.error,
      errorMessage: message,
    );
  }
}

class ServerSelection extends ConsumerWidget {
  final bool initAttempted;
  const ServerSelection({super.key, this.initAttempted = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginFormProvider);
    final notifier = ref.read(loginFormProvider.notifier);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).serverSelection),
        automaticallyImplyLeading: !initAttempted,
        actions: [
          IconButton(
            icon: const Icon(Icons.http),
            onPressed: () => showDialog(
              context: context,
              builder: (context) => HeaderDialog(
                headers: state.headers ?? {},
                onAdd: notifier.addHeader,
                onUpdate: notifier.updateHeader,
                onRemove: notifier.removeHeader,
              ),
            ),
            tooltip: S.of(context).customHeaders,
          ),
        ],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: _LoginForm(
                state: state,
                notifier: notifier,
                colorScheme: colorScheme,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  final LoginFormState state;
  final LoginFormNotifier notifier;
  final ColorScheme colorScheme;

  const _LoginForm({
    required this.state,
    required this.notifier,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    return AutofillGroup(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _ServerInputSection(notifier: notifier),
          const SizedBox(height: 64),
          _CredentialsSection(notifier: notifier, state: state),
          const SizedBox(height: 24),
          _SubdomainCard(notifier: notifier, state: state),
          const SizedBox(height: 32),
          _LoginButton(notifier: notifier, state: state),
          if (state.status == FormStatus.loading)
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: CircularProgressIndicator(),
            ),
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              'After login, please restart the app once',
            ),
          ),
          if (state.errorMessage != null)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                state.errorMessage!,
                style: TextStyle(color: colorScheme.error),
              ),
            ),
        ],
      ),
    );
  }
}

class _ServerInputSection extends StatelessWidget {
  final LoginFormNotifier notifier;

  const _ServerInputSection({required this.notifier});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Text(
              S.of(context).serverAddress,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            ServerInput(
              onValidInput: (protocol, domain, port) =>
                  notifier.updateServerDetails(protocol, domain, port),
            ),
          ],
        ),
      ),
    );
  }
}

class _CredentialsSection extends StatelessWidget {
  final LoginFormNotifier notifier;
  final LoginFormState state;

  const _CredentialsSection({
    required this.notifier,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          autofillHints: const [AutofillHints.username],
          onChanged: notifier.updateUsername,
          decoration: InputDecoration(
            labelText: S.of(context).username,
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.person),
          ),
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        TextField(
          autofillHints: const [AutofillHints.password],
          obscureText: true,
          onChanged: notifier.updatePassword,
          decoration: InputDecoration(
            labelText: S.of(context).password,
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.lock),
          ),
        ),
      ],
    );
  }
}

class _SubdomainCard extends StatelessWidget {
  final LoginFormNotifier notifier;
  final LoginFormState state;

  const _SubdomainCard({
    required this.notifier,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(S.of(context).enableSubdirectory),
                Switch(
                  value: state.subdirectory != null,
                  onChanged: notifier.toggleSubdomain,
                  activeColor: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
            if (state.subdirectory != null)
              TextField(
                onChanged: notifier.updateSubdirectory,
                controller: TextEditingController(text: state.subdirectory),
                decoration: InputDecoration(
                  labelText: S.of(context).subdirectory,
                  hintText: "/audiobookshelf",
                  border: const OutlineInputBorder(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  final LoginFormNotifier notifier;
  final LoginFormState state;

  const _LoginButton({
    required this.notifier,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (state.isValid && state.status != FormStatus.loading)
            ? () => notifier.submit(context)
            : null,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            S.of(context).login,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class HeaderDialog extends StatefulWidget {
  final Map<String, String> headers;
  final Function(String, String) onAdd;
  final Function(String, String, String) onUpdate;
  final Function(String) onRemove;

  const HeaderDialog({
    super.key,
    required this.headers,
    required this.onAdd,
    required this.onUpdate,
    required this.onRemove,
  });

  @override
  State<HeaderDialog> createState() => _HeaderDialogState();
}

class _HeaderDialogState extends State<HeaderDialog> {
  late List<MapEntry<String, String>> _headers;
  final List<TextEditingController> _keyControllers = [];
  final List<TextEditingController> _valueControllers = [];

  @override
  void initState() {
    super.initState();
    _initializeHeaders();
  }

  @override
  void didUpdateWidget(HeaderDialog oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.headers != widget.headers) {
      _initializeHeaders();
    }
  }

  void _initializeHeaders() {
    _headers = widget.headers.entries.toList();
    _keyControllers.clear();
    _valueControllers.clear();
    for (final entry in _headers) {
      _keyControllers.add(TextEditingController(text: entry.key));
      _valueControllers.add(TextEditingController(text: entry.value));
    }
  }

  void _addHeader() {
    setState(() {
      _headers.add(const MapEntry('', ''));
      _keyControllers.add(TextEditingController());
      _valueControllers.add(TextEditingController());
      widget.onAdd('', '');
    });
  }

  void _updateHeader(int index) {
    final newKey = _keyControllers[index].text;
    final newValue = _valueControllers[index].text;
    final oldKey = _headers[index].key;

    if (newKey.isEmpty) return;

    widget.onUpdate(oldKey, newKey, newValue);
    _headers[index] = MapEntry(newKey, newValue);
  }

  void _removeHeader(int index) {
    final removedKey = _headers[index].key;
    setState(() {
      _headers.removeAt(index);
      _keyControllers.removeAt(index);
      _valueControllers.removeAt(index);
    });
    widget.onRemove(removedKey);
  }

  @override
  void dispose() {
    for (final controller in _keyControllers) {
      controller.dispose();
    }
    for (final controller in _valueControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(S.of(context).customHeaders),
      content: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 300),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _headers.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                              labelText: 'Key',
                              border: OutlineInputBorder(),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 8),
                            ),
                            controller: _keyControllers[index],
                            onChanged: (_) => _updateHeader(index),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                              labelText: 'Value',
                              border: OutlineInputBorder(),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 8),
                            ),
                            controller: _valueControllers[index],
                            onChanged: (_) => _updateHeader(index),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.remove_circle,
                              color: Colors.red),
                          onPressed: () => _removeHeader(index),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: _addHeader,
          child: const Text('Add Header'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Close'),
        ),
      ],
    );
  }
}
