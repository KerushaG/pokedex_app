import 'dart:async';

import 'package:flutter/material.dart';

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
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6F6),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFFF8F6F6)),
        backgroundColor: const Color(0xFFF8F6F6),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 220,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                  image: AssetImage('lib/src/assets/login-logo.png'),
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
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
    );
  }
}
