import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.sizeOf(context).width,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.lightBlueAccent,
      ),
      child: const Center(child:  Text('Add', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
    );
  }
}
