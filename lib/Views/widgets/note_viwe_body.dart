import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Views/widgets/custom_app_bar.dart';
import 'package:note_app/Views/widgets/notes_list_view.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';

class NoteViweBody extends StatefulWidget {
  const NoteViweBody({super.key});

  @override
  State<NoteViweBody> createState() => _NoteViweBodyState();
}

class _NoteViweBodyState extends State<NoteViweBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomAppBar(
            title: "Notes",
            icon: Icons.search,
          ),
          SizedBox(height: 10),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
