import 'package:flutter/material.dart';
import 'package:notes_app_2025/widgets/custom_buttom.dart';
import 'package:notes_app_2025/widgets/custom_text_form_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomTextField(labelText: 'titel', onChanged: (value) {}),
            SizedBox(height: 15),
            CustomTextField(
              labelText: 'contant',
              maxLines: 5,
              onChanged: (value) {},
            ),
            CustomButtom(text: 'add', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
