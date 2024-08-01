import 'package:flutter/material.dart';

import 'color_item.dart';

class ColorsListview extends StatelessWidget {
  const ColorsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 5.0),
          child:  ColorItem(),
        );
      }),
    );
  }
}
