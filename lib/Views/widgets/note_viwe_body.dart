import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/custom_app_bar.dart';
import 'package:note_app/Views/widgets/notes_list_view.dart';

class NoteViweBody extends StatelessWidget {
  const NoteViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomAppBar(title: "Notes",icon: Icons.search,),
          SizedBox(height: 10),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
