import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(

      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      child: Column(
        
        children:const [
           SizedBox(height: 20,),
          CussomTextField(hint: 'Title',),
           SizedBox(height: 20,),
          CussomTextField(hint: 'Content',maxline: 6,),
        ],
      ),
    ) ;
  }
}
