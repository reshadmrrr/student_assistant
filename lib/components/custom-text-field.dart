import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType inputType;
  final String hintText;
  final Color color;

  const CustomTextField({
    Key key,
    this.inputType,
    this.hintText,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        obscureText: false,
        keyboardType: inputType,
        textAlign: TextAlign.center,
        onChanged: (value) => print(value),
        decoration: kInputDecoration.copyWith(
            labelText: hintText,
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: color))),
      ),
    );
  }
}

class CustomTextFieldWithPassword extends StatelessWidget {
  final TextInputType inputType;
  final String hintText;
  final Color color;

  const CustomTextFieldWithPassword({
    Key key,
    this.inputType,
    this.hintText,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        obscureText: true,
        keyboardType: inputType,
        textAlign: TextAlign.center,
        onChanged: (value) => print(value),
        decoration: kInputDecoration.copyWith(
            labelText: hintText,
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: color))),
      ),
    );
  }
}
