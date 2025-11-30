import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/add_note_form.dart';


class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
