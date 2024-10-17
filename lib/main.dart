import 'package:flutter/material.dart';

import 'features/auth_feature/splash_view/splash_view.dart';
import 'helper_functions/routes_function.dart';

void main() {
  runApp(const Tamayoz());
}

class Tamayoz extends StatelessWidget {
  const Tamayoz({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routename,
    );
  }
}

