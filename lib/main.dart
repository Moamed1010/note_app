import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/Constant.dart';
import 'package:note_app/Views/note_view.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(KNotesBox);
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),
      home: const NoteView(),
    );
  }
}
  