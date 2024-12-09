import 'package:blog_app/features/auth/presentation/pages/login_screen.dart';
import 'package:blog_app/features/auth/presentation/pages/sign_up_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter router = GoRouter(
    initialLocation: "/loginInScreen",
    routes: [
      /// sign in screen
      GoRoute(
        path: "/loginInScreen",
        name: "loginInScreen",
        builder: (context, state) => const LoginScreen(),
      ),

      /// sign up screen
      GoRoute(
        path: "/signUpScreen",
        name: "signUpScreen",
        builder: (context, state) => const SignUpScreen(),
      ),
    ],
  );
}
