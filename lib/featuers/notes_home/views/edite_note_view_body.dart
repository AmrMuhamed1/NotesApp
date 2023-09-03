import 'package:flutter/material.dart';
import 'package:note_app/featuers/notes_home/views/widgets/custom_app_bar.dart';
import 'package:note_app/featuers/notes_home/views/widgets/custom_text_field.dart';


class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, }) : super(key: key);


  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(

            hint: '',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(

            hint: 'widget.note.subTitle',
            maxLines: 5,
          ),
          const SizedBox(
            height: 16,
          ),

        ],
      ),
    );
  }
}