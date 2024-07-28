import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/custom_button.dart';
import 'package:notesapp/views/widgets/custom_textfield.dart';

class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 12.0),
      child:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 35,),
            CustomTextField(hintText: 'Title', prefixIcon: Icons.title),
            SizedBox(height: 20,),
            CustomTextField(hintText: 'Content',maxLines: 5,),
            SizedBox(height: 26,),
            CustomButton(),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
