import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/Constant.dart';
import 'package:note_app/Models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) async{
    emit(AddNoteLoading());
    try {
  var noteBox=Hive.box<NoteModel>(KNotesBox);
  
  await noteBox.add(note);
  emit(AddNoteSuccess());
} on Exception catch (e) {
 emit( AddNoteFailure(e.toString()));
}

  }
}
