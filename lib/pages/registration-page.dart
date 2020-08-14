import 'package:flutter/material.dart';
import 'package:student_assistant/components/custom-text-field.dart';
import 'package:student_assistant/components/welcomepage-rounded-button.dart';

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
    //double width = MediaQuery.of(context).size.width;
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
                    // radius: width * 0.1,
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
                    color: Colors.blue,
                  ),
                  CustomTextField(
                      hintText: "Email",
                      inputType: TextInputType.emailAddress,
                      color: Colors.blue),
                  CustomTextField(
                      hintText: "Username",
                      inputType: TextInputType.name,
                      color: Colors.blue),
                  CustomTextField(
                      hintText: "Profession",
                      inputType: TextInputType.name,
                      color: Colors.blue),
                  CustomTextField(
                      hintText: "Institute",
                      inputType: TextInputType.name,
                      color: Colors.blue),
                  CustomTextField(
                      hintText: "Mobile Number",
                      inputType: TextInputType.number,
                      color: Colors.blue),
                  CustomTextFieldWithPassword(
                    hintText: "Enter Password",
                    inputType: TextInputType.visiblePassword,
                    color: Colors.blue,
                  ),
                  CustomTextFieldWithPassword(
                    hintText: "Confirm Password",
                    inputType: TextInputType.visiblePassword,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            Hero(
              tag: 'join-us',
              child: WelcomePageButton(
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
