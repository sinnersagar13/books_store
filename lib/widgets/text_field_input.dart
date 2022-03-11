import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  // final TextEditingController textEditingController;
  final String hintText;
  TextFieldInput({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        // controller: textEditingControll
        // er,
        decoration: InputDecoration(
          focusColor: Colors.white,
          hintText: hintText,
          suffixIcon: Icon(Icons.search),
          // suffixIconColor: Colors.yellow,
          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          filled: true,
          contentPadding: EdgeInsets.all(8),
        ),
      ),
    );
  }
}
