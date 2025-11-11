import 'package:flutter/material.dart';
import 'package:notes_app_2025/constants.dart';
import 'package:notes_app_2025/models/notes_model.dart';
import 'package:notes_app_2025/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NotesModelAdapter());

  await Hive.openBox(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),

      debugShowCheckedModeBanner: false,
      home: NotesView(),
    );
  }
}
