import 'package:flutter/material.dart';

import '../../../data/utils/utils.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.nextFocusNode,
    required this.title,
    required this.message,
    required this.hintText,
  });

  TextEditingController controller;
  FocusNode focusNode;
  FocusNode? nextFocusNode;
  String title;
  String message;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      validator: (value) {
        if (value!.isEmpty) {
          Utils.flashbar(title, message);
        }
      },
      onFieldSubmitted: (value) {
        Utils.fieldFocusChange(
            context, focusNode, nextFocusNode!); // Move focus to next field
      },
      decoration: InputDecoration(
          hintText: hintText, border: const OutlineInputBorder()),
    );
  }
}
