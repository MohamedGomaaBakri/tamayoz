import 'package:flutter/material.dart';

class CustomAuthOptions extends StatelessWidget {
  const CustomAuthOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage('assets/images/facebook.png'),
        ),
        Image(image: AssetImage('assets/images/Google.png'),),
        Image(image: AssetImage('assets/images/apple.png'),),
      ],
    );
  }
}