import 'package:flutter/material.dart';
import 'package:tamayoz/features/auth_feature/login_view/login/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routename = '/login';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginViewBody(),
    );
  }
}
