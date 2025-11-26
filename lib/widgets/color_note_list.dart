import 'package:flutter/material.dart';

class ColorNoteList extends StatelessWidget {
  const ColorNoteList({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundColor: Colors.amber, maxRadius: 35);
  }
}
