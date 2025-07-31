
import 'package:flutter/material.dart';

class MyTextFiled extends StatelessWidget {
  String label;
  TextEditingController controller;
  bool obscure;
   MyTextFiled({
    required this.label,
    required this.controller,
    required this.obscure,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: label,
        hintText: 'Put the $label here',
        labelStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        color: Colors.grey
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          width: 2.0
          )
        ),
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
            width: 2.0
          )
        ),
        border:  OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade900,
            width: 2.0
          )
        )
      ),
    );
  }
}