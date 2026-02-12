import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.controller,
    this.icon,
    required this.userPrompt,
    this.onType,
  });

  final TextEditingController controller;
  final Widget? icon;
  final String userPrompt;
  final void Function(String)? onType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: null,
      minLines: 1,
      maxLines: null,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your info';
        }
        return null;
      },
      controller: controller,
      cursorColor: Color(0xFF4A5567),
      decoration: InputDecoration(
        suffixIcon: icon,
        suffixIconColor: Color(0xFF4A5567),
        filled: true,
        fillColor: Colors.white,
        hintText: userPrompt,
        hintStyle: TextStyle(color: Color(0xFF4A5567)),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Color(0xFF4A5567)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Color(0xFF4A5567)),
        ),
      ),
      onChanged: onType,
    );
  }
}
