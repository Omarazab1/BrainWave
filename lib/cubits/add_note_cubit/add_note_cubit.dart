import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/utils/constants.dart';

import 'add_note_state.dart';

class NoteCubit extends Cubit<AddNoteState> {
  NoteCubit() : super(AddNoteInitial());

    addNote(NoteModel note) async
    {
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