import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/login_option_container.dart';

class LoginOption extends StatefulWidget {
  const LoginOption({
    super.key,
  });
  @override
  State<LoginOption> createState() => _LoginOptionState();
}

class _LoginOptionState extends State<LoginOption> {
  final List<String> options = ['معلم', 'طالب', 'ولي الأمر'];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 56),
      child: SizedBox(
        height: 48,
        child: ListView.builder(
          itemCount: options.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  activeIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: LoginOptionContainer(
                  containerName: options[index],
                  isSelected: index == activeIndex,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}