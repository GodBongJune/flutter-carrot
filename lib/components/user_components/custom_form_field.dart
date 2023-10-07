import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String text;
  bool isPassword;
  CustomFormField({required this.text, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$text",
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 95, 95, 95)),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: "$text",
          ),
        ),
      ],
    );
  }
}
