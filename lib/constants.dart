import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//ThemeData
final ThemeData kdefaultTheme = ThemeData(
    primarySwatch: Colors.white60,
    primaryColor: Colors.white,
    fontFamily: 'Catamaran',
    appBarTheme: AppBarTheme(color: Colors.white));

////All colors

const kPrimaryThemeColor = Color(0xffecf0f1);
const kSecondaryThemeColor = Color(0xffbdc3c7);
const klightBlue = Color(0xff74b9ff);
const klightred = Color(0xffd63031);

const kInputDecoration = InputDecoration(
  labelText: 'Enter your Text',
  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
  border:
      OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(6.0))),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(24.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(6.0)),
  ),
);

//
const String kAppLogo = 'assets/logo.png';
const String kAppTitle = 'assets/sa.png';

// Screen height and width
