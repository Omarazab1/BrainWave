import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/views/widgets/custom_appbar.dart';
import 'package:notesapp/views/widgets/notes_listview.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.0),
      child:  Column(
        children: [
          SizedBox(height: 30,),
          CustomAppbar(text: 'Notes',icon: Icons.search,),
          SizedBox(height: 10,),
          Expanded(child: NotesListview()),
        ],
      ),
    );
  }
}
