import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/src/view/shared/app_logo.dart';
import 'package:pokedex_app/src/view/shared/input_field.dart';
import 'package:pokedex_app/src/view/shared/primary_button.dart';
import 'package:pokedex_app/src/view_model/bloc/authentication/auth_bloc.dart';

part 'widgets/_signup_form.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const _SignupPage();
  }
}

class _SignupPage extends StatelessWidget {
  const _SignupPage();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (previous, current) => current.failure != previous.failure,
      listener: (context, state) {
        if (state.failure != null) {
          showDialog(
            context: context,
            builder:
                (_) => AlertDialog(
                  title: const Text('Failed Signup'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Try Again'),
                    ),
                  ],
                ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xFFF8F6F6),
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Color(0xFFF8F6F6)),
            backgroundColor: const Color(0xFFF8F6F6),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppLogo(logoHeight: 200),
                  const SizedBox(height: 24),
                  const Text(
                    'Pokédex',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Authentication Required',
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 24),

                  const _SignupForm(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
