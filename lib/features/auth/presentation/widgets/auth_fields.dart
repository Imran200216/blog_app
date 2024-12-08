import 'package:flutter/material.dart';

class AuthFields extends StatelessWidget {
  final String hintText;
  final TextInputType keyBoardType;
  final TextEditingController controller;
  final bool isObscureText;

  const AuthFields({
    super.key,
    required this.hintText,
    required this.keyBoardType,
    required this.controller,
    this.isObscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText,
      controller: controller,
      keyboardType: keyBoardType,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      validator: (value) {
        value!.isEmpty ? "$hintText is missing" : null;
        return null;
      },
    );
  }
}
