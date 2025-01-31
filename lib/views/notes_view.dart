import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/custom_modal_bottom_sheet.dart';
import 'package:notesapp/views/widgets/notes_view_body.dart';



class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static const routeName = '/notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
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
    );
  }
}
