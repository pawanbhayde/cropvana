// ignore_for_file: unused_import

import 'package:cropvana/pages/bottomnav.dart';
import 'package:cropvana/pages/loginpage.dart';
import 'package:cropvana/pages/signinpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const LoginPage(),
    );
  }
}
