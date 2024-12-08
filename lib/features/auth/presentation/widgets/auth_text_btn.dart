import 'package:blog_app/core/theme/app_pallate.dart';
import 'package:flutter/material.dart';

class AuthTextBtn extends StatelessWidget {
  final String btnText;
  final VoidCallback onTap;

  const AuthTextBtn({super.key, required this.btnText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        btnText,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18 ,
          color: AppPallete.gradient3,
        ),
      ),
    );
  }
}
