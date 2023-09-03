import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/featuers/notes_home/views/widgets/custom_text_field.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child:  const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text('Hello'),
              CustomTextField(
                hint: 'title',
              ),
              SizedBox(height: 16,),
              CustomTextField(
                hint: 'content',
                maxLines: 6,
              ),
              SizedBox(height: 25,),
              CustomButton()

            ],
          ),
        ),
      ),
    );
  }

}
class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});

  final void Function()? onTap;

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(
              8,
            )),
        child: Center(
          child: isLoading
              ? const SizedBox(
            height: 24,
            width: 24,
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          )
              : const Text(
            'Add',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

