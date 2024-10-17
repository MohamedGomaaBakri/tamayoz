import 'package:flutter/material.dart';
import 'package:tamayoz/features/auth_feature/login_view/login/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const routename = '/splash';
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(LoginView.routename);
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image(
                  image: AssetImage("assets/images/logo.png"),
              ),
          ),
        ],
      ),
    );
  }
}
