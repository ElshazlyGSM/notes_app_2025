import 'package:flutter/material.dart';
import 'package:notes_app_2025/models/notes_model.dart';
import 'package:notes_app_2025/views/edit_note_view.dart';

class CustomNote extends StatelessWidget {
  const CustomNote({super.key, required this.note});
  final NotesModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (conext) {
              return EditNoteView();
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  note.title,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Text(note.subTitle, style: TextStyle(fontSize: 20)),
              trailing: const Icon(Icons.delete, size: 28),
            ),
            Text(note.date),
          ],
        ),
      ),
    );
  }
}
