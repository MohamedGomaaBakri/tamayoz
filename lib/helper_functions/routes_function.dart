
import 'package:flutter/material.dart';
import 'package:tamayoz/features/auth_feature/login_view/signup/signup_view.dart';

import '../features/auth_feature/login_view/login/login_view.dart';
import '../features/auth_feature/splash_view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routename:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case LoginView.routename:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case SignupView.routename:
      return MaterialPageRoute(builder: (context) => const SignupView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
