import 'package:flutter/material.dart';
import 'package:notes_app_2025/constants.dart';
import 'package:notes_app_2025/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app_2025/widgets/notes_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NotesBody(),
        floatingActionButton: FloatingActionButton(
          // backgroundColor: kPrimaryColor,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              },
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
