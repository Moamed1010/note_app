import 'package:flutter/material.dart';
import 'package:note_app/Constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxline=1,this.onSaved, this.onChanged});
  final void Function(String)? onChanged;
  final String hint;
  final int maxline; 
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged ,
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty??true){
          return 'Filed is required';
        }
        return null;
      },
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