import 'package:flutter/material.dart';
import 'package:notesapp/models/note_model.dart';
import '../../utils/constants.dart';
import 'color_item.dart';

class EditColorsListview extends StatefulWidget {
  const EditColorsListview({super.key, required this.noteModel});
   final NoteModel noteModel;
  @override
  State<EditColorsListview> createState() => _EditColorsListviewState();
}

class _EditColorsListviewState extends State<EditColorsListview> {
  late int currentIndex;
   @override
  void initState() {
     currentIndex = kColors.indexOf(Color(widget.noteModel.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 6.0),
              child:  GestureDetector(
                onTap: (){
                  currentIndex = index;
                  widget.noteModel.color = kColors[index].value;
                  setState(() {

                  });
                },
                child:  ColorItem(
                  isActive: currentIndex == index,
                  color: kColors[index],
                ),
              ),
            );
          }),
    );
  }
}
