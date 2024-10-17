import 'package:flutter/material.dart';

class CustomDropdownFormField extends StatelessWidget {
  const CustomDropdownFormField({
    super.key,
    required this.items,
    required this.hintText,
    required this.onChanged,
    this.selectedValue,
  });

  final List<String> items;
  final String hintText;
  final String? selectedValue;
  final void Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: SizedBox(
        height: 56,
        width: double.infinity,
        child: DropdownButtonFormField<String>(
          value: selectedValue,
          onChanged: onChanged,
          dropdownColor: Colors.white,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
            size: 28,
          ),
          decoration: InputDecoration(
            fillColor: const Color(0xffA5A5A5).withOpacity(.3),
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xffA5A5A5),
              fontSize: 16,
              fontFamily: 'Readex Pro',
              fontWeight: FontWeight.bold,
            ),
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(),
          ),
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              alignment: Alignment.centerRight,
              value: value,
              child: Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: const Color(0xffA5A5A5).withOpacity(.3),
        strokeAlign: BorderSide.strokeAlignCenter,
        width: 1,
      ),
    );
  }
}
