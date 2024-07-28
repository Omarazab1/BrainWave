import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/custom_button.dart';
import 'package:notesapp/views/widgets/custom_textField.dart';

class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 12.0),
      child:  Column(
        children: [
          SizedBox(height: 35,),
          CustomTextField(hintText: 'title', prefixIcon: Icons.title),
          SizedBox(height: 20,),
          CustomTextField(hintText: 'content', prefixIcon: Icons.note_alt_outlined,maxLines: 5,),
          SizedBox(height: 20,),
          CustomButton(),
        ],
      ),
    );
  }
}
