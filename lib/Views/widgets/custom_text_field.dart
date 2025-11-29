import 'package:flutter/material.dart';
import 'package:note_app/Constant.dart';

class CussomTextField extends StatelessWidget {
  const CussomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle:const  TextStyle(
          color: KPrimaryColor
        ),
        
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color?? Colors.white),
      );
  }
}