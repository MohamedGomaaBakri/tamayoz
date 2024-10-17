import 'package:flutter/material.dart';
import 'package:tamayoz/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        height: 54,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xFF08749F),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: onPressed,
          child: Text(text,
              textAlign: TextAlign.center,
              style: Styles.style16.copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}
