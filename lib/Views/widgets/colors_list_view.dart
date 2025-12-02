import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/colors_list_view_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndx = 0;
  List<Color>colors=const [
    Color(0xffB1F8F2),
    Color(0xffB7E6C7),
    Color(0xffBCD39C),
    Color(0xff787066),
    Color(0xff330C2F),
    Color(0xff571A56),
    Color(0xff7B287D),
    Color(0xff7648A6),
    Color(0xff7067CF),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: InkWell(
                onTap: () {
                  currentIndx = index;
                  setState(() {});
                },
                child: ColorItem(
                  color: colors[index],
                  isSelected: currentIndx == index,
                ),
              ),
            );
          }),
    );
  }
}
