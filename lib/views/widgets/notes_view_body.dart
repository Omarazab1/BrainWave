import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/custom_appbar.dart';
import 'package:notesapp/views/widgets/notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.0),
      child:  Column(
        children: [
          SizedBox(height: 10,),
          CustomAppbar(),
          SizedBox(height: 10,),
          NotesListview(),
        ],
      ),
    );
  }
}
