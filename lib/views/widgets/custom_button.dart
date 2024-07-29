import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.sizeOf(context).width,
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.lightBlueAccent,
        ),
        child: const Center(child:  Text('Add', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
