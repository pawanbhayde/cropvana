// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LoginPageText(
          text: 'Welcome,',
        ),
        const LoginPageText(
          text: 'sign in to continue,',
        ),
        Row(
          children: const [
            LoginPageText(
              text: 'on ',
            ),
            LoginPageText(
              text: 'Cropvana.',
            ),
          ],
        ),
      ],
    );
  }
}

class LoginPageText extends StatelessWidget {
  const LoginPageText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
    );
  }
}
