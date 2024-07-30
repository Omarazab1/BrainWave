import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../../models/note_model.dart';
import '../../utils/constants.dart';
import 'notes_state.dart';

class NotesCubit extends Cubit<NotesState>{
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes ;
  fetchAllNotes()                              //load notes
  {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      notes = notesBox.values.toList();

  }
}