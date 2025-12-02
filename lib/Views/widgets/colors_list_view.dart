
import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/colors_list_view_item.dart';

class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 65,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: const ColorItem(),
        );
      }),
    );
  }
}