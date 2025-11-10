import 'package:flutter/material.dart';
import 'package:notes_app_2025/widgets/custom_buttom.dart';
import 'package:notes_app_2025/widgets/custom_text_form_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        CustomTextField(labelText: 'titel', onChanged: (value) {}),
        CustomTextField(labelText: 'titel', maxLines: 5, onChanged: (value) {}),
        CustomButtom(text: 'add', onPressed: () {}),
      ],
    );
  }
}
