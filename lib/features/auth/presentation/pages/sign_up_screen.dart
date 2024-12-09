import 'package:blog_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_btn.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_fields.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_text_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  /// form validation key
  final formKey = GlobalKey<FormState>();

  /// controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 30,
          bottom: 30,
        ),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Sign Up.",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              AuthFields(
                controller: nameController,
                keyBoardType: TextInputType.name,
                hintText: "Name",
              ),
              const SizedBox(
                height: 20,
              ),
              AuthFields(
                controller: emailController,
                keyBoardType: TextInputType.emailAddress,
                hintText: "Email",
              ),
              const SizedBox(
                height: 20,
              ),
              AuthFields(
                isObscureText: true,
                controller: passwordController,
                keyBoardType: TextInputType.visiblePassword,
                hintText: "Password",
              ),
              const SizedBox(
                height: 40,
              ),
              AuthBtn(
                onTap: () {
                  (formKey.currentState!.validate())
                      ? context.read<AuthBloc>().add(AuthSignUp(
                            name: nameController.text.trim(),
                            password: passwordController.text.trim(),
                            email: emailController.text.trim(),
                          ))
                      : null;
                },
                btnTitle: "Sign Up",
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  AuthTextBtn(
                    btnText: "Sign In",
                    onTap: () {
                      GoRouter.of(context).pushNamed("loginInScreen");
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
