import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:student_assistant/components/custom-text-field.dart';
import 'package:student_assistant/components/rounded-raised-button.dart';

import '../constants.dart';

class RegistrationPage extends StatefulWidget {
  static String id = 'registration-page';

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: 24.0, right: 24.0, top: 32.0, bottom: 12.0),
        child: Column(
          children: [
            Row(
              children: [
                Hero(
                  tag: 'logo',
                  child: CircleAvatar(
                    backgroundImage: AssetImage(kAppLogo),
                  ),
                ),
                Flexible(
                  child: Hero(
                    tag: 'app-title',
                    child: Image.asset(
                      kAppTitle,
                      // width: width - 150.0,
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  CustomTextField(
                    hintText: "Full Name",
                    inputType: TextInputType.name,
                  ),
                  CustomTextField(
                    hintText: "Email",
                    inputType: TextInputType.emailAddress,
                  ),
                  CustomTextField(
                    hintText: "Username",
                    inputType: TextInputType.name,
                  ),
                  CustomTextField(
                    hintText: "Profession",
                    inputType: TextInputType.name,
                  ),
                  CustomTextField(
                    hintText: "Institute",
                    inputType: TextInputType.name,
                  ),
                  CustomTextField(
                    hintText: "Mobile Number",
                    inputType: TextInputType.number,
                  ),
                  CustomTextField(
                    hintText: "Enter Password",
                    inputType: TextInputType.visiblePassword,
                    hasPassword: true,
                  ),
                  CustomTextField(
                    hintText: "Confirm Password",
                    inputType: TextInputType.visiblePassword,
                    hasPassword: true,
                  ),
                  Text(
                    "Link your social media (optional)",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset(kfbLogo, width: width * 0.2),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(kgoogleLogo, width: width * 0.2),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Hero(
              tag: 'join-us',
              child: RoundedRaisedButton(
                width: double.infinity,
                height: height,
                title: "Join Us",
                color: klightBlue,
                onPressed: () {},
                // Navigator.pushNamed(context, RegistrationPage.id),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
