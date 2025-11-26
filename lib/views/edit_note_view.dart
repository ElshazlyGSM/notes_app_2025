import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_2025/cubits/get_note_cubit/get_note_cubit.dart';
import 'package:notes_app_2025/models/notes_model.dart';
import 'package:notes_app_2025/widgets/custom_appbar.dart';
import 'package:notes_app_2025/widgets/custom_buttom.dart';
import 'package:notes_app_2025/widgets/custom_text_form_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NotesModel note;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              CustomAppbar(text: 'Edit', icon: Icons.check),
              SizedBox(height: 30),
              CustomTextField(
                labelText: 'title',
                onChanged: (value) {
                  note.title = value;
                },
              ),
              SizedBox(height: 15),
              CustomTextField(
                labelText: 'contant',
                maxLines: 5,
                onChanged: (value) {
                  note.subTitle = value;
                },
              ),
              CustomButtom(
                text: 'add',
                onPressed: () {
                  Navigator.pop(context);
                  BlocProvider.of<GetNoteCubit>(context).getNote();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
