import 'package:flutter/material.dart';

import '../edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditNoteView();
        }));
      },
      child: Container(
        padding:const EdgeInsets.only(top: 24 ,bottom: 24 ,left: 16 ),
        decoration: BoxDecoration(
          color: const Color(0xffffcc80),
          borderRadius: BorderRadius.circular(16),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:const Text('Note 1' , style: TextStyle(color: Colors.black,fontSize: 28),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0,bottom: 16),
                child: Text(
                  'Description of note 1',
                  style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 18),),
              ),
              trailing: IconButton(onPressed: () {}, icon:const Icon(Icons.delete,size: 30,) , color: Colors.black,),
            ),
            const SizedBox(height: 10),
            const Padding(
             padding:  EdgeInsets.only(right: 37.0),
             child:  Text('May 5, 2023',style: TextStyle(color: Colors.black,fontSize: 16)),
           ),
          ],
        ),
      ),
    );
  }
}
