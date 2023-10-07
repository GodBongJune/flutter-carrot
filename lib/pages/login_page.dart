import 'package:carrot/components/user_components/custom_form_field.dart';
import 'package:carrot/components/logo.dart';
import 'package:carrot/components/user_components/bottom_text.dart';
import 'package:carrot/components/user_components/password_form_field.dart';
import 'package:carrot/components/user_title.dart';
import 'package:carrot/size.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Logo(),
            SizedBox(height: xlarge_gap),
            UserTitle(text: "Loging", comment: "Enter yor emails and password"),
            SizedBox(height: 50),
            CustomFormField(text: "Email"),
            SizedBox(height: 35),
            PasswordFormField(text: "Password"),
            // CustomFormField(text: "Password", isPassword: true),
            SizedBox(height: large_gap),
            _passwordSerach(),
            SizedBox(height: large_gap),
            // CustomButton(),
            SizedBox(
              height: 50,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  child: Text("Log In")),
            ),
            SizedBox(height: large_gap),
            BottomText(
              text: "Don't have an account?",
              url: "join",
              tapText: "Signup",
            ),
          ],
        ),
      ),
    );
  }

  Widget _passwordSerach() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "Forgot Password?",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
