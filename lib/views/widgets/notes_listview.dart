import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/cubits/notes_cubit/notes_state.dart';

import '../../models/note_model.dart';
import 'custom_note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit,NotesState>(
      builder: (context,state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
       return ListView.builder(
         itemCount: notes.length,
           itemBuilder: (context, index) {
             return  Padding(
               padding:  const EdgeInsets.symmetric(vertical: 8.0),
               child:  CustomNoteItem(
                 noteModel: notes[index],
               ),
             );
           });
      },

    );
  }
}
