import 'package:flutter/material.dart';
import 'add_note_form.dart';

class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 12.0),
      child:  SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

