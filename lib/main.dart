import 'package:flutter/material.dart';
import 'package:note_app/featuers/notes_home/views/note_home_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: const NoteHomeView(
      ),
    );
  }
}



