import 'package:flutter/material.dart';
import 'package:tamayoz/features/auth_feature/login_view/signup/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  static const routename = '/signup';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
body: SignupViewBody(),
    );
  }
}
