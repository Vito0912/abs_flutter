import 'dart:developer';

import 'package:abs_flutter/api/me/login.dart';
import 'package:abs_flutter/api/me/request/login_request.dart';
import 'package:abs_flutter/features/auth/server_input.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/models/login_form.dart';
import 'package:abs_flutter/models/server.dart';
import 'package:abs_flutter/models/setting.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quickalert/quickalert.dart';

final loginFormProvider =
    StateNotifierProvider.autoDispose<LoginFormNotifier, LoginFormState>(
  (ref) => LoginFormNotifier(ref),
);

class LoginFormNotifier extends StateNotifier<LoginFormState> {
  final Ref ref;
  LoginFormNotifier(this.ref) : super(const LoginFormState());

  void updateUsername(String value) => state = state.copyWith(username: value);
  void updatePassword(String value) => state = state.copyWith(password: value);
  void updateServerDetails(String protocol, String domain, String port) =>
      state = state.copyWith(protocol: protocol, domain: domain, port: port);
  void updateSubdirectory(String value) =>
      state = state.copyWith(subdirectory: value.isNotEmpty ? value : null);

  Future<void> submit(BuildContext context) async {
    if (!state.isValid) {
      state = state.copyWith(
        status: FormStatus.error,
        errorMessage: "Please fill all required fields",
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
      );

      setBasePathOverride(ref, server.url);

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
        errorMessage: "An unknown error occurred",
      );
    }
  }

  void _handleLoginResponse(
      BuildContext context, Response<Login> response, Server server) {
    final user = response.data?.user;
    if (user == null || !context.mounted) {
      state = state.copyWith(
        status: FormStatus.error,
        errorMessage: "Invalid credentials",
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
      401 => "Invalid credentials",
      404 => "Server not found",
      _ => e.message ?? "Connection error",
    };

    state = state.copyWith(
      status: FormStatus.error,
      errorMessage: message,
    );

    if (context.mounted) {
      QuickAlert.show(
        context: context,
        type: QuickAlertType.error,
        title: "Error",
        text: message,
      );
    }
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
        title: const Text("Server Selection"),
        automaticallyImplyLeading: !initAttempted,
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
          const SizedBox(height: 32),
          _CredentialsSection(notifier: notifier, state: state),
          const SizedBox(height: 24),
          _SubdirectoryInput(notifier: notifier, state: state),
          const SizedBox(height: 32),
          _LoginButton(notifier: notifier, state: state),
          if (state.status == FormStatus.loading)
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: CircularProgressIndicator(),
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
              "Server Address",
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
          decoration: const InputDecoration(
            labelText: "Username",
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person),
          ),
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        TextField(
          autofillHints: const [AutofillHints.password],
          obscureText: true,
          onChanged: notifier.updatePassword,
          decoration: const InputDecoration(
            labelText: "Password",
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.lock),
          ),
        ),
      ],
    );
  }
}

class _SubdirectoryInput extends StatelessWidget {
  final LoginFormNotifier notifier;
  final LoginFormState state;

  const _SubdirectoryInput({
    required this.notifier,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: notifier.updateSubdirectory,
      decoration: const InputDecoration(
        labelText: "Subdirectory (e.g., /audiobookshelf)",
        hintText: "Optional",
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.folder),
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
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
