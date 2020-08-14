import 'package:flutter/material.dart';
import 'package:student_assistant/components/custom-text-field.dart';
import 'package:student_assistant/components/welcomepage-rounded-button.dart';

import '../constants.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'login-screen';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'logo',
              child: Flexible(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(kAppLogo),
                ),
              ),
            ),
            Hero(
                tag: 'app-title',
                child: Flexible(child: Image.asset(kAppTitle))),
            SizedBox(height: 30.0),
            CustomTextField(
              hintText: "Your Username",
              inputType: TextInputType.name,
              color: Colors.red,
            ),
            CustomTextFieldWithPassword(
              hintText: "Your Password",
              inputType: TextInputType.visiblePassword,
              color: Colors.red,
            ),
            SizedBox(height: 30.0),
            Hero(
              tag: 'login',
              child: WelcomePageButton(
                width: double.infinity,
                height: height,
                title: "Login",
                color: klightred,
                onPressed: () =>
                    {}, //Navigator.pushNamed(context, LoginScreen.id),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
