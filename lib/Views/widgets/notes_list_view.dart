import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/Views/widgets/custom_note_item.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes=BlocProvider.of<NotesCubit>(context).notes??[];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: ListView.builder(
            itemCount:notes.length ,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: NoteItem(),
              );
            },
          ),
        );
      },
    );
  }
}
