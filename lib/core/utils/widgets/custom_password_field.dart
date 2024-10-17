import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';


class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key, required this.onSaved,});
  final void Function(String?) onSaved;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return  CustomTextFormField(
      obscureText: obscureText,
      onSaved: widget.onSaved,
      hintText: 'كلمة المرور',
      textInputType: TextInputType.visiblePassword,
      suffixIcon:  Padding(
        padding: const EdgeInsets.only(left: 40),
        child: GestureDetector(
          onTap: ()
          {
            obscureText = !obscureText;
            setState((){});
          },
          child: obscureText ?  const Padding(
            padding: EdgeInsets.all(14.0),
            child: Icon(
              Icons.remove_red_eye_outlined,
              color: Colors.black,
            ),
          ): const Padding(
            padding: EdgeInsets.all(14.0),
            child: Icon(
              Icons.visibility_off_outlined,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
