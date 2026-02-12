import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.logoHeight = 250});

  final double logoHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: logoHeight,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        image: DecorationImage(
          image: AssetImage('lib/src/assets/login-logo.png'),
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
