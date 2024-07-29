import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../cubits/add_note_cubit/add_note_state.dart';
import 'add_note_form.dart';

class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child:  SingleChildScrollView(
        child: BlocConsumer(
          listener: (context , state){
            if(state is AddNoteError){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.errorMessage))
              );
            }
            if(state is AddNoteSuccess){
              Navigator.pop(context);
            }
          },
          builder: (context , state ){
            return  ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: const AddNoteForm()
            );
          },

        ),
      ),
    );
  }
}

