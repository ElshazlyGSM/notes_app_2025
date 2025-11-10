import 'package:flutter/material.dart';
import 'package:notes_app_2025/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app_2025/widgets/custom_appbar.dart';
import 'package:notes_app_2025/widgets/custom_note.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(onPressed: () {}, text: 'Notes', icon: Icons.search),
              const SizedBox(height: 25),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return CustomNote();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
