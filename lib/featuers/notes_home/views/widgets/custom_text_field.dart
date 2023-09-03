import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxLines = 1});
final String hint;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxLines,
      cursorColor:kPrimaryColor ,
      decoration: InputDecoration(
        hintText: hint,
        border:outlineInputBorder(),
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder( kPrimaryColor)
      ),
    );
  }
}
OutlineInputBorder outlineInputBorder([color]){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide( color: color??Colors.white)
  );
}