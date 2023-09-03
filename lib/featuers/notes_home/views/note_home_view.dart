import 'package:flutter/material.dart';
import 'package:note_app/featuers/notes_home/views/note_home_view.dart';
import 'package:note_app/featuers/notes_home/views/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/featuers/notes_home/views/widgets/custom_app_bar.dart';
import 'package:note_app/featuers/notes_home/views/widgets/custom_text_field.dart';
import 'package:note_app/featuers/notes_home/views/widgets/note_home_body_list_view.dart';

class NoteHomeView extends StatelessWidget {
  const NoteHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    context: context,
                    builder: (context) {
                      return const AddNoteBottomSheet();
                    });
              },
              child: const Icon(Icons.add),
            ),
            body: const NoteHomeBodyView()));
  }
}


