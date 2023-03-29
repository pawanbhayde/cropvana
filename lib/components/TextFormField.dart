// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class LogintextField extends StatelessWidget {
  const LogintextField({
    Key? key,
    required this.LabelText,
  }) : super(key: key);

  final String LabelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: ((value) {
        if (value == null || value.isEmpty) {
          return 'Please Enter Email Address';
        }
        return null;
      }),
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        labelText: LabelText,
        labelStyle: const TextStyle(
            color: Color.fromARGB(150, 23, 23, 23),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
