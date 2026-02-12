import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onTap,
    required this.buttonText,
    this.buttonColor = Colors.red,
    this.buttonTextStyle = const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w900,
    ),
  });
  final void Function()? onTap;
  final String buttonText;
  final Color buttonColor;
  final TextStyle buttonTextStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
          child: Text(buttonText, style: buttonTextStyle),
        ),
      ),
    );
  }
}
