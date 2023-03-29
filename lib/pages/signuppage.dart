import 'package:cropvana/components/TextFormField.dart';
import 'package:cropvana/components/loginPageText.dart';
import 'package:cropvana/pages/bottomnav.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> newKey = GlobalKey();
  bool agree = false;

  // This function is triggered when the button is clicked
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Form(
            key: newKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/Logo.png",
                    height: 200,
                  ),
                ),
                const LoginPageText(
                  text: "Sign Up",
                ),
                const SizedBox(height: 30),
                const LogintextField(LabelText: 'Full Name'),
                const SizedBox(height: 20),
                const LogintextField(LabelText: 'Mobile No.'),
                const SizedBox(height: 20),
                const LogintextField(LabelText: 'Email'),
                const SizedBox(height: 20),
                const LogintextField(LabelText: 'Password'),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Material(
                      child: Checkbox(
                        value: agree,
                        onChanged: (value) {
                          setState(() {
                            agree = value ?? false;
                          });
                        },
                      ),
                    ),
                    const Text(
                      'I have read and accept terms and conditions',
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (newKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainNavigation()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 150, vertical: 20),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
