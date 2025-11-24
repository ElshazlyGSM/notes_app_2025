import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_2025/cubits/get_note_cubit/get_note_cubit.dart';
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
              isScrollControlled:
                  true, //  lBottomSheet عشان ال يطلع لفوق لما الكيبورد يظهر
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
