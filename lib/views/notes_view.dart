import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/views/widgets/custom_modal_bottom_sheet.dart';
import 'package:notesapp/views/widgets/notes_view_body.dart';

import '../cubits/notes_cubit/notes_cubit.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
                context: context,
                builder: (context){
                  return const CustomModalBottomSheet();
                }
            );
          },
          child: const Icon(Icons.add),),
        body:const NotesViewBody(),
      ),
    );
  }
}
