import 'package:flutter/material.dart';
import 'package:note_app/Views/note_view.dart';

void main() {
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: const NoteView(),
    );
  }
}
  