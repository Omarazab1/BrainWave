import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
   AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
   String? title , subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child:  Column(
        children: [
          const SizedBox(height: 35,),
          CustomTextField(
            hintText: 'Title',
            prefixIcon: Icons.title,
            onSaved: (value){
              title = value;
            },),
          const SizedBox(height: 20,),
           CustomTextField(
            hintText: 'Content',maxLines: 5,
            onSaved: (value){
              subtitle = value;
            },
          ),
          const SizedBox(height: 26,),
           CustomButton(
            onTap:(){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
                Navigator.pop(context);
              }else{
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
