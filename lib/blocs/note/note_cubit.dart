import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:orange_dc/data/local/sqflite.dart';
import 'package:orange_dc/models/note_model.dart';
part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {

    NoteCubit() : super(NoteInitial());

    TextEditingController titleController = TextEditingController();
    TextEditingController bodyController = TextEditingController();
    String date = DateFormat.jm().format(DateTime.now());


    Future<List> getNotes() async{
      List Notes =  await DatabaseProvider.db.getNotes();
      print(Notes);
      if(Notes.length == 0) {
        emit(NoteIsEmpty());
      } else
        emit(NoteHasData());
        return Notes;
    }

    addNote({String title = "",String body = "",String creationTime = ""}) async{
      final noteId = await DatabaseProvider.db.addNote(
        NoteModel(title: title, body: body, creationTime: creationTime)
      );
      emit(NoteAdded());
    }

    removeNote(int id) async {
      final noteId = await DatabaseProvider.db.deleteNote(id);
      emit(NoteRemoved());
    }


  }



