import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tamayoz/core/utils/styles.dart';
import 'package:tamayoz/features/auth_feature/login_view/signup/signup_view.dart';

class DonotHaveAccount extends StatelessWidget {
  const DonotHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'ليس لديك حساب؟',
            style: Styles.style16,
          ),
          TextSpan(
            text: ' ',
            style: Styles.style16.copyWith(color: const Color(0xFF1480A8)),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () {
              Navigator.pushNamed(context, SignupView.routename);
            },
            text: 'سجل الان',
            style: Styles.style16.copyWith(color: const Color(0xFF08749F)),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}