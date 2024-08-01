import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/utils/constants.dart';

import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
   Color color = const Color(0xff8DA7BE);
    addNote(NoteModel note) async
    {
      note.color = color.value;
      emit(AddNoteLoading());
      try {
        var notesBox = Hive.box<NoteModel>(kNotesBox);
        notesBox.add(note);
        emit(AddNoteSuccess());
      } catch (e) {
        emit(AddNoteError(e.toString()));
      }
    }
}