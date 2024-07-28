import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.lightBlueAccent,
      ),
      child: const Center(child:  Text('Add Note', style: TextStyle(color: Colors.white),)),
    );
  }
}
