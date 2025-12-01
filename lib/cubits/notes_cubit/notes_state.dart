part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

final class NotesInitial extends NotesState {}
final class NotesLoading extends NotesState {}
final class NoteSuccess extends NotesState {
  final  List<NoteModel>notes;

  NoteSuccess(this.notes);
}
final class NotesFailure extends NotesState {
  final String errorMessage;

  NotesFailure(this.errorMessage);
}

