import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import '../../cubits/add_note_cubit/add_note_cubit.dart';
import '../../cubits/add_note_cubit/add_note_state.dart';
import 'add_note_form.dart';

class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit,AddNoteState>(
        listener: (context , state){
          if(state is AddNoteError){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage))
            );
          }
          if(state is AddNoteSuccess){
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context , state ){
          return  AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.0),
              child:  SingleChildScrollView(child:  AddNoteForm()),
            ),
          );
        },

      ),
    );
  }
}

