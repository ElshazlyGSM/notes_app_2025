import 'package:flutter/material.dart';
import 'package:notes_app_2025/widgets/custom_buttom.dart';
import 'package:notes_app_2025/widgets/custom_text_form_field.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(height: 30),
              CustomTextField(
                labelText: 'titel',
                onSaved: (value) {
                  title = value;
                },
              ),
              SizedBox(height: 15),
              CustomTextField(
                labelText: 'subtitle',
                maxLines: 5,
                onSaved: (value) {
                  subTitle = value;
                },
              ),
              CustomButtom(
                text: 'add',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
