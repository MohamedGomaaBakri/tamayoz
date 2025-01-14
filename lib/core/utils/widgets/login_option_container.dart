import 'package:flutter/material.dart';

class LoginOptionContainer extends StatelessWidget {
  const LoginOptionContainer({super.key, required this.containerName,this.isSelected = false,});
  final String containerName;
  final bool isSelected;


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300) ,
      width: 80,
      height: 48,
      decoration: ShapeDecoration(
        color: isSelected ? const Color(0xFF08749F) : const Color(0xffF1F1F1),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: isSelected ? Colors.white : const Color(0xffF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Center(
        child: Text(
          containerName,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 16,
            fontFamily: 'Readex Pro',
            fontWeight: FontWeight.w400,
            height: 0.11,
          ),
        ),
      ),
    );
  }
}
