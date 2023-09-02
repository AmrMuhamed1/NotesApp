import 'package:flutter/material.dart';
import 'package:note_app/featuers/notes_home/views/widgets/custom_app_bar.dart';

class NoteHomeView extends StatelessWidget {
  const NoteHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(body: NoteHomeBodyView()));
  }
}

class NoteHomeBodyView extends StatelessWidget {
  const NoteHomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}


