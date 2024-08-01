import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';

import '../../utils/constants.dart';
import 'color_item.dart';

class ColorsListview extends StatefulWidget {
  const ColorsListview({super.key});

  @override
  State<ColorsListview> createState() => _ColorsListviewState();
}

class _ColorsListviewState extends State<ColorsListview> {

  int currentIndex = 0;
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
              BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
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
