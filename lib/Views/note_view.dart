import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/note_viwe_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: NoteViweBody()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, size: 30, color: Colors.black),
        backgroundColor: Colors.cyanAccent,
      ),
    );
  }
}
