import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/Views/widgets/colors_list_view.dart';
import 'package:note_app/Views/widgets/custom_botton.dart';
import 'package:note_app/Views/widgets/custom_text_field.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:intl/intl.dart';


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
  String? title, subTitle;

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
              subTitle = value;
            },
          ),
          const SizedBox(height:40 ),
          const ColorListView(),
          const SizedBox(height: 40),
          
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return SavedNote(state, context);
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  CustomButton SavedNote(AddNoteState state, BuildContext context) {
    return CustomButton(
              isLoading: state is AddNoteLoading? true:false,
              onTap: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                  var currentDate=DateTime.now();
                  var formattedCurrentDate=DateFormat('dd/MM/yyyy').format(currentDate);
                  var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: formattedCurrentDate.toString(),
                      color: Colors.blueAccent.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            );
  }
}
