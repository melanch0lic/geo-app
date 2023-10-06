import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../domain/repository/auth_repository.dart';
import '../sign_up_page copy/sign_up_page.dart';

import 'cubit/login_cubit.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginCubit(context.read<AuthRepository>()),
        child: BlocListener<LoginCubit, LoginState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            if (state.status.isFailure) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text(state.errorMessage ?? 'Authentication Failure'),
                  ),
                );
            }
          },
          child: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 40),
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.98,
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Geo Heart', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700)),
                            const SizedBox(height: 10),
                            _EmailInput(),
                            const SizedBox(height: 8),
                            _PasswordInput(),
                            const SizedBox(height: 8),
                            _LoginButton(),
                            const SizedBox(height: 8),
                            _SignUpButton(),
                          ],
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_emailInput_textField'),
          onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
            labelText: 'Email',
            helperText: '',
            errorText: state.email.displayError != null ? 'Invalid email' : null,
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          onSubmitted: state.isValid ? (_) => context.read<LoginCubit>().logInWithCredentials() : null,
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (password) => context.read<LoginCubit>().passwordChanged(password),
          obscureText: true,
          decoration: InputDecoration(
            border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
            labelText: 'Password',
            helperText: '',
            errorText: state.password.displayError != null ? 'Invalid password' : null,
          ),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return state.status.isInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('loginForm_continue_raisedButton'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: const Color(0xFFFFD600),
                ),
                onPressed: state.isValid ? () => context.read<LoginCubit>().logInWithCredentials() : null,
                child: const Text('LOGIN'),
              );
      },
    );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextButton(
      key: const Key('loginForm_createAccount_flatButton'),
      onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpPage())),
      child: Text(
        'CREATE ACCOUNT',
        style: TextStyle(color: theme.primaryColor),
      ),
    );
  }
}
