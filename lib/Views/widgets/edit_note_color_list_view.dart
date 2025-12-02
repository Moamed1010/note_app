
import 'package:flutter/material.dart';
import 'package:note_app/Constant.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/Views/widgets/colors_list_view_item.dart';

class EtetNoteColorsList extends StatefulWidget {
  const EtetNoteColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EtetNoteColorsList> createState() => _EtetNoteColorsListState();
}

class _EtetNoteColorsListState extends State<EtetNoteColorsList> {

  late int currentIndx;
  @override
  void initState() {
  currentIndx=Kcolors.indexOf(Color(widget.note.color));
      super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      child: ListView.builder(
          itemCount: Kcolors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: InkWell(
                onTap: () {
                  currentIndx = index;
                  widget.note.color=Kcolors[index].value;

                  setState(() {});
                },
                child: ColorItem(
                  color: Kcolors[index],
                  isSelected: currentIndx == index,
                ),
              ),
            );
          }),
    );
  }
}
