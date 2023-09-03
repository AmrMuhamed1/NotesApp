import 'package:flutter/material.dart';
import 'package:note_app/featuers/notes_home/views/widgets/custom_app_bar.dart';
import 'package:note_app/featuers/notes_home/views/widgets/note_card_item.dart';

class NoteHomeBodyView extends StatelessWidget {
  const NoteHomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(),
            const SizedBox(
              height: 30,
            ),
            ListView.builder(
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: NoteCardItem(),
              ),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
            )
          ],
        ),
      ),
    );
  }
}
