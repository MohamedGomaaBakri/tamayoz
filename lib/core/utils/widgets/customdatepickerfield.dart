import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDatePickerFormField extends StatefulWidget {
  const CustomDatePickerFormField({
    super.key,
    required this.hintText,
    required this.onDateSelected,
  });

  final String hintText;
  final void Function(DateTime) onDateSelected;

  @override
  _CustomDatePickerFormFieldState createState() =>
      _CustomDatePickerFormFieldState();
}

class _CustomDatePickerFormFieldState extends State<CustomDatePickerFormField> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: SizedBox(
        height: 56,
        width: double.infinity,
        child: TextFormField(
          readOnly: true,
          onTap: () async {
            final DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );
            if (pickedDate != null) {
              setState(() {
                selectedDate = pickedDate;
              });
              widget.onDateSelected(pickedDate);
            }
          },
          decoration: InputDecoration(
            fillColor: const Color(0xffA5A5A5).withOpacity(.3),
            filled: true,
            hintText:
            selectedDate != null ? DateFormat('yyyy-MM-dd').format(selectedDate!) : widget.hintText,
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
