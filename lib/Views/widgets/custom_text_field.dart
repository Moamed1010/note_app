import 'package:flutter/material.dart';
import 'package:note_app/Constant.dart';

class CussomTextField extends StatelessWidget {
  const CussomTextField({super.key, required this.hint,  this.maxline=1});
  
  final String hint;
  final int maxline; 
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hint,
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