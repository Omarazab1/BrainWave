import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/widgets/custom_appbar.dart';
import 'package:notesapp/views/widgets/custom_textfield.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title , content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomAppbar(
            text: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.content = content ?? widget.noteModel.content;
              widget.noteModel.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 20,
          ),
           CustomTextField(
            onChanged: (value){
              title = value;
            },
              hintText: widget.noteModel.title,),
          const SizedBox(
            height: 20,
          ),
           CustomTextField(
            onChanged: (value){
              content = value;
            },
            hintText: widget.noteModel.content,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
