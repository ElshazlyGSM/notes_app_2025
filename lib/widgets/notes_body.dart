import 'package:flutter/material.dart';
import 'package:notes_app_2025/widgets/custom_appbar.dart';
import 'package:notes_app_2025/widgets/custom_note.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
