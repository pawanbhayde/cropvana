// ignore_for_file: sort_child_properties_last

import 'package:cropvana/components/loginPageText.dart';
import 'package:cropvana/pages/signinpage.dart';
import 'package:cropvana/pages/signuppage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Image.asset(
                "assets/images/Logo.png",
                height: 200,
              ),
            ),
            const HeadingText(),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SigninPage()),
                  );
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 160, vertical: 20),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Center(
                child: Text("Or",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            const SizedBox(height: 15),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Login with google",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff477DBA),
                      fontWeight: FontWeight.w500),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: const Color(0xffD8E9FF),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 110, vertical: 20),
                ),
              ),
            ),
            const SizedBox(height: 150),
            const Center(child: Text("Not Registered Yet?")),
            const SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                },
                child: const Text(
                  "Create an Account",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 110, vertical: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
