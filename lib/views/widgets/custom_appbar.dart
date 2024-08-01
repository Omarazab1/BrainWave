import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.text,required this.icon, this.onPressed});
 final String text;
 final IconData icon;
 final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         Text(text,style:const TextStyle(fontSize: 28,),),
         const Spacer(),
         CustomIcon(icon: icon ,onPressed: onPressed,),
      ],
    );
  }
}
