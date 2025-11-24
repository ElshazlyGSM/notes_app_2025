import 'package:flutter/material.dart';
import 'package:notes_app_2025/models/notes_model.dart';
import 'package:notes_app_2025/widgets/custom_appbar.dart';
import 'package:notes_app_2025/widgets/custom_buttom.dart';
import 'package:notes_app_2025/widgets/custom_text_form_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.notesModel});
  final NotesModel notesModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CustomAppbar(text: 'Edit', icon: Icons.check),
              SizedBox(height: 30),
              CustomTextField(labelText: 'titel', onChanged: (value) {}),
              SizedBox(height: 15),
              CustomTextField(
                labelText: 'contant',
                maxLines: 5,
                onChanged: (value) {},
              ),
              CustomButtom(
                text: 'add',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
