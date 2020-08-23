import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType inputType;
  final String hintText;
  final Color color;
  final bool hasPassword;

  const CustomTextField({
    Key key,
    this.inputType,
    this.hintText,
    this.color = Colors.blueAccent,
    this.hasPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 6.0),
      child: TextField(
        obscureText: hasPassword,
        keyboardType: inputType,
        textAlign: TextAlign.center,
        onChanged: (value) => print(value),
        decoration: InputDecoration(
          labelText: hintText,
          labelStyle: TextStyle(color: color),
          contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0))),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(24.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
          ),
        ),
      ),
    );
  }
}
