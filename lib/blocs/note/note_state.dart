part of 'note_cubit.dart';

@immutable
abstract class NoteState {}

class NoteInitial extends NoteState {}

class NoteIsEmpty extends NoteState {}

class NoteHasData extends NoteState {}

class NoteAdded extends NoteState {}

class NoteRemoved extends NoteState {}




