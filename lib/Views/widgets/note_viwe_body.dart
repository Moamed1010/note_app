import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/Views/widgets/custom_app_bar.dart';
import 'package:note_app/Views/widgets/custom_note_item.dart';

class NoteViweBody extends StatelessWidget {
  const NoteViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomAppBar(),
          SizedBox(height: 10),
          NoteItem(),
        ],
      ),
    );
  }
}
