
import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/custom_botton.dart';
import 'package:note_app/Views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 20),
          CustomTextField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
         const SizedBox(height: 20),
          CustomTextField(
            hint: 'Content',
            maxline: 6,
            onSaved: (value) {
              content = value;
            },
          ),
        const  SizedBox(height: 100),
          CustomButton(
            onTap: (){
              if(formkey.currentState!.validate()){
                formkey.currentState!.save();
              }
              else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
         const SizedBox(height: 16),
        ],
      ),
    );
  }
}
