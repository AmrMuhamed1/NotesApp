import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/featuers/notes_home/views/note_home_view.dart';

void main() async{
  await Hive.initFlutter();

 await Hive.openBox(kNotesBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),
      home: const NoteHomeView(
      ),
    );
  }
}



