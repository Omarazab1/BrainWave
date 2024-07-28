import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/custom_appbar.dart';
import 'package:notesapp/views/widgets/custom_textfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.0),
      child:  Column(
        children: [
          SizedBox(height: 30,),
          CustomAppbar(text: 'Edit Note',icon: Icons.check,),
          SizedBox(height: 20,),
          CustomTextField(hintText: 'Title'),
          SizedBox(height: 20,),
          CustomTextField(hintText: 'Content',maxLines: 5,),
        ],
      ),
    );
  }
}
