import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/Constant.dart';
import 'package:note_app/Models/note_model.g.dart';
import 'package:note_app/Views/note_view.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(KNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
       
      ],
    
    
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),
        home: const NoteView(),
      ),
    );
  }
}
  