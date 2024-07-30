import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap,  this.isLoading = false});
  final Function()? onTap;
  final bool isLoading;
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
        child:  Center(child: isLoading? const SizedBox(
            height: 24,width: 24,child: CircularProgressIndicator(color: Colors.black,)): const Text('Add', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
