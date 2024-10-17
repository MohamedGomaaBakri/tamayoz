import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.textInputType,
      required this.hintText,
      this.suffixIcon,
     required this.onSaved, this.obscureText = false
        ,});
  final TextInputType textInputType;
  final String hintText;
  final Widget? suffixIcon;
  final void Function(String?) onSaved;
 final bool obscureText ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: SizedBox(
        height: 56,
        width: double.infinity,
        child: TextFormField(
          obscureText: obscureText,
          onSaved: onSaved,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'هذا الحقل مطلوب';
            }
            return null;
          },
          keyboardType: textInputType,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            fillColor: const Color(0xffA5A5A5).withOpacity(.3),
            filled: true,
            suffixIcon: suffixIcon,

            hintText: hintText,
            hintStyle:  const TextStyle(
              color: Color(0xffA5A5A5),
              fontSize: 16,
              fontFamily: 'Readex Pro',
              fontWeight: FontWeight.bold,
            ),
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide:  BorderSide(
        color: const Color(0xffA5A5A5).withOpacity(.3),
        strokeAlign: BorderSide.strokeAlignCenter,
        width: 1,
      ),
    );
  }
}
