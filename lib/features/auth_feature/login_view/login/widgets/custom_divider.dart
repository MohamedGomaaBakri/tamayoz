import 'package:flutter/material.dart';
import 'package:tamayoz/core/utils/styles.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Row(
        children: [
          const Expanded(
            child: Divider(
              color: Color(0xFF08749F),
              thickness: 1.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'أو أكمل باستخدام',
              textAlign: TextAlign.center,
              style: Styles.style12.copyWith(color: const Color(0xFF08749F)),
            ),
          ),
          const Expanded(
            child: Divider(
              color: Color(0xFF08749F),
              thickness: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}