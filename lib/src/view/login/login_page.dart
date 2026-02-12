import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/src/view/shared/app_logo.dart';
import 'package:pokedex_app/src/view/shared/input_field.dart';
import 'package:pokedex_app/src/view/shared/primary_button.dart';
import 'package:pokedex_app/src/view/sign_up/signup_page.dart';
import 'package:pokedex_app/src/view_model/bloc/authentication/auth_bloc.dart';

part 'widgets/_login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const _LoginPage();
  }
}

class _LoginPage extends StatelessWidget {
  const _LoginPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6F6),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFFF8F6F6)),
        backgroundColor: const Color(0xFFF8F6F6),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 24, 16, 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppLogo(),
              const SizedBox(height: 24),
              const Text(
                'Welcome Back',
                style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              const _LoginForm(),
              PrimaryButton(
                buttonText: 'Create Account',
                buttonTextStyle: TextStyle(
                  color: Color(0xFF4A5567),
                  fontWeight: FontWeight.w900,
                ),
                buttonColor: Colors.white,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(builder: (context) => SignupPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
