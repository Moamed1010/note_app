import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/add_note_botton_sheet.dart';
import 'package:note_app/Views/widgets/note_viwe_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: NoteViweBody()),
      floatingActionButton: FloatingActionButton(
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(24),
        ),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return AddNoteButtonSheet();
            },
          );
        },
        child: Icon(Icons.add, size: 30, color: Colors.black),
        backgroundColor: Colors.cyanAccent,
      ),
    );
  }
}
