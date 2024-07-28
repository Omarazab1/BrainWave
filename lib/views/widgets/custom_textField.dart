import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int? maxLines;
  final IconData prefixIcon;
  const CustomTextField({super.key, required this.hintText,  this.maxLines = 1, required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration:  InputDecoration(
        hintText: hintText,
        hintStyle:const TextStyle(color: kPrimaryColor),
        prefixIcon:Icon(prefixIcon),
        prefixIconColor: kPrimaryColor,
        border:  buildBorder(),
        enabledBorder:  buildBorder(),
        focusedBorder:  buildBorder(kPrimaryColor),
      ),
    );
  }
}
OutlineInputBorder buildBorder([color]) {
  return  OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: color?? Colors.white, width: 1.0),
  );
}