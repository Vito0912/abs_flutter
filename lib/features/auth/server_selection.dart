import 'package:abs_api/abs_api.dart' as abs;
import 'package:abs_flutter/features/auth/server_input.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/globals.dart' as g;
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/models/permissions.dart';
import 'package:abs_flutter/models/server.dart';
import 'package:abs_flutter/models/setting.dart';
import 'package:abs_flutter/models/user.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quickalert/quickalert.dart';

final usernameProvider = StateProvider<String>((ref) => '');
final passwordProvider = StateProvider<String>((ref) => '');
final loginStateProvider = StateNotifierProvider<LoginStateNotifier, LoginState>((ref) => LoginStateNotifier());

class LoginState {
  final bool isLoading;
  final bool isSuccess;
  final String errorMessage;

  LoginState({this.isLoading = false, this.isSuccess = false, this.errorMessage = ''});
}

class LoginStateNotifier extends StateNotifier<LoginState> {
  LoginStateNotifier() : super(LoginState());

  void setLoading() {
    state = LoginState(isLoading: true);
  }

  void setSuccess() {
    state = LoginState(isLoading: false, isSuccess: true);
  }

  void setError(String errorMessage) {
    state = LoginState(isLoading: false, errorMessage: errorMessage);
  }
}

class ServerSelection extends ConsumerWidget {
  final bool? initAttempted;
  const ServerSelection({super.key, this.initAttempted = false});

  void enableCredentialsInput(WidgetRef ref, String enteredProtocol, String enteredDomain, String enteredPort) {
    ref.read(isInputValidProvider.notifier).state = true;
    ref.read(protocolProvider.notifier).state = enteredProtocol;
    ref.read(domainProvider.notifier).state = enteredDomain;
    ref.read(portProvider.notifier).state = enteredPort;
  }

  void showHint(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(S.of(context).enterValidUsernameOrPassword),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final isServerInputValid = ref.watch(isInputValidProvider);
    final loginState = ref.watch(loginStateProvider);

    return PlatformScaffold(
      appBar: (initAttempted ?? false) ? PlatformAppBar(
        title: Text(S.of(context).serverSelection),
        leading: null
      ) : PlatformAppBar(
        title: Text(S.of(context).serverSelection),

      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                      ServerInputContainer(
                        onValidInput: (protocol, domain, port) => enableCredentialsInput(ref, protocol, domain, port),
                      ),
                      SizedBox(height: 16),
                      UsernameInputField(isServerInputValid: isServerInputValid, showHint: () => showHint(context)),
                      SizedBox(height: 16),
                      PasswordInputField(isServerInputValid: isServerInputValid, showHint: () => showHint(context)),
                      SizedBox(height: 16),
                      if (loginState.isLoading) PlatformCircularProgressIndicator(),
                      if (loginState.errorMessage.isNotEmpty) PlatformText(loginState.errorMessage, style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: LoginButton(isServerInputValid: isServerInputValid),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServerInputContainer extends StatelessWidget {
  final Function(String, String, String) onValidInput;

  const ServerInputContainer({Key? key, required this.onValidInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).primaryColor.withOpacity(0.1),
      ),
      child: Column(
        children: [
          PlatformText(S.of(context).serverAdressContinue),
          PlatformText(S.of(context).multipleServerAdressess),
          SizedBox(height: 24),
          ServerInput(onValidInput: onValidInput),
        ],
      ),
    );
  }
}

class UsernameInputField extends ConsumerStatefulWidget {
  final bool isServerInputValid;
  final VoidCallback showHint;

  const UsernameInputField({Key? key, required this.isServerInputValid, required this.showHint}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UsernameInputFieldState();
}

class _UsernameInputFieldState extends ConsumerState<UsernameInputField> {
  late TextEditingController usernameController;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController(text: ref.read(usernameProvider));

    usernameController.addListener(() {
      ref.read(usernameProvider.notifier).state = usernameController.text;
    });
  }

  @override
  void dispose() {
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!widget.isServerInputValid) {
          widget.showHint();
        }
      },
      child: AbsorbPointer(
        absorbing: !widget.isServerInputValid,
        child: PlatformTextField(
          controller: usernameController,
          hintText: S.of(context).username,
          material: (_, __) => MaterialTextFieldData(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
            ),
          ),
          cupertino: (_, __) => CupertinoTextFieldData(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}

class PasswordInputField extends ConsumerStatefulWidget {
  final bool isServerInputValid;
  final VoidCallback showHint;

  const PasswordInputField({Key? key, required this.isServerInputValid, required this.showHint}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends ConsumerState<PasswordInputField> {
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController(text: ref.read(passwordProvider));

    passwordController.addListener(() {
      ref.read(passwordProvider.notifier).state = passwordController.text;
    });
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!widget.isServerInputValid) {
          widget.showHint();
        }
      },
      child: AbsorbPointer(
        absorbing: !widget.isServerInputValid,
        child: PlatformTextField(
          controller: passwordController,
          hintText: S.of(context).password,
          obscureText: true,
          material: (_, __) => MaterialTextFieldData(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
            ),
          ),
          cupertino: (_, __) => CupertinoTextFieldData(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginButton extends ConsumerWidget {
  final bool isServerInputValid;

  const LoginButton({Key? key, required this.isServerInputValid}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PlatformElevatedButton(
      onPressed: () async {
        if (!isServerInputValid) {
          QuickAlert.show(context: context, type: QuickAlertType.warning, title: S.of(context).mustEnterValidAddress);
          return;
        }

        final username = ref.read(usernameProvider).trim();
        final password = ref.read(passwordProvider).trim();
        if (username.isEmpty || password.isEmpty) {
          QuickAlert.show(context: context, type: QuickAlertType.warning, title: S.of(context).usernameOrPasswordNotEmpty);
          return;
        }

        ref.read(loginStateProvider.notifier).setLoading();

        final protocol = ref.read(protocolProvider);
        final domain = ref.read(domainProvider);
        final port = ref.read(portProvider);

        Server server = Server(ssl: protocol == 'https://', host: domain, port: int.parse(port));
        setBasePathOverride(ref, server.url);

        abs.LoginRequestBuilder loginPostRequestBuilder = abs.LoginRequestBuilder();
        loginPostRequestBuilder.username = username;
        loginPostRequestBuilder.password = password;

        try {
          Response<abs.Login200Response> res = await ref.watch(apiProvider)!.getAuthApi().login(loginRequest: loginPostRequestBuilder.build());

          if (res.data!.user == null) {
            ref.read(loginStateProvider.notifier).setError(S.of(context).noUserData);
            return;
          }

          abs.User apiUser = res.data!.user!;

          Permissions permissions = Permissions(
            download: apiUser.permissions?.download,
            delete: apiUser.permissions?.delete,
            upload: apiUser.permissions?.upload,
            accessAllLibraries: apiUser.permissions?.accessAllLibraries,
            accessAllTags: apiUser.permissions?.accessAllTags,
            accessExplicitContent: apiUser.permissions?.accessExplicitContent,
            update_: apiUser.permissions?.update_,
          );

          User user = User(
            id: apiUser.id!,
            username: apiUser.username!,
            type: apiUser.type!,
            token: apiUser.token!,
            isActive: apiUser.isActive,
            isLocked: apiUser.isLocked,
            lastSeen: apiUser.lastSeen,
            createdAt: apiUser.createdAt,
            server: server,
            setting: Setting(settings: defaultSettings),
            permissions: permissions,
            librariesAccessible: apiUser.librariesAccessible?.toList(),
            itemTagsAccessible: apiUser.itemTagsSelected?.toList(),
          );

          final usersNotifier = ref.read(usersProvider.notifier);
          final users = ref.read(usersProvider);

          List<User> updatedUsers = List.from(users);

          // Delete the user if it already exists
          updatedUsers.removeWhere((user) => user.id == apiUser.id && user.server?.url == server.url);

          updatedUsers.add(user);

          usersNotifier.setUsers(updatedUsers);

          ref.read(selectedUserProvider.notifier).state = updatedUsers.length - 1;

          ref.read(loginStateProvider.notifier).setSuccess();


          // Go to the home screen
          if(context.mounted) {
            context.go('/');
          } else {
            ref.read(loginStateProvider.notifier).setError('There was an error while trying to navigate to the home screen');
          }
        } catch (e) {
          String errorMessage = 'Login failed';
          if (e is DioException) {
            if (e.response?.statusCode == 401) {
              errorMessage = 'Invalid username or password';
            } else {
              errorMessage = e.response?.data ?? e.message ?? 'Login failed with no error message';
            }
          } else {
            errorMessage = e.toString();
          }
          ref.read(loginStateProvider.notifier).setError(errorMessage);
        }
      },
      child: PlatformText('Login'),
    );
  }
}
