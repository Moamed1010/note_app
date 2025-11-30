import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/custom_botton.dart';
import 'package:note_app/Views/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 20),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 20),
            CustomTextField(hint: 'Content', maxline: 6),
            SizedBox(height:100),
            CustomButton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
