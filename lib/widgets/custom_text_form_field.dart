import 'package:flutter/material.dart';
import 'package:notes_app_2025/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labelText,
    required this.onChanged,
    this.obscureText,
    this.maxLines = 1,
  });
  final String labelText;
  final Function(String) onChanged;
  final bool? obscureText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText ?? false,
      maxLines: maxLines,
      // style: TextStyle(color: Colors.white),
      onChanged: onChanged,
      decoration: InputDecoration(
        // labelText: labelText,
        // labelStyle: TextStyle(color: kPrimaryColor),
        hintText: labelText,
        hintStyle: TextStyle(color: kPrimaryColor),
        enabledBorder: buildBorder(kPrimaryColor),
        focusedBorder: buildBorder(kPrimaryColor),
        errorBorder: buildBorder(Colors.red),
        focusedErrorBorder: buildBorder(Colors.red),
        errorStyle: TextStyle(fontSize: 15),
      ),
    );
  }

  OutlineInputBorder buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color, width: 2),
    );
  }
}
