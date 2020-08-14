import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student_assistant/constants.dart';
import 'package:student_assistant/pages/login-page.dart';
import 'package:student_assistant/pages/registration-page.dart';

import '../components/welcomepage-rounded-button.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcome-page';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'logo',
              child: Flexible(
                child: CircleAvatar(
                  radius: width * 0.3,
                  backgroundImage: AssetImage(kAppLogo),
                ),
              ),
            ),
            SizedBox(height: height * 0.025),
            Hero(
                tag: 'app-title',
                child: Flexible(child: Image.asset(kAppTitle))),
            SizedBox(height: height * 0.1),
            Text("new?"),
            Hero(
              tag: 'join-us',
              child: WelcomePageButton(
                width: width,
                height: height,
                title: "Join Us",
                color: klightBlue,
                onPressed: () =>
                    Navigator.pushNamed(context, RegistrationPage.id),
              ),
            ),
            SizedBox(height: height * 0.02),
            Text("already have an account?"),
            Hero(
              tag: 'login',
              child: WelcomePageButton(
                width: width,
                height: height,
                title: "Login",
                color: klightred,
                onPressed: () => Navigator.pushNamed(context, LoginScreen.id),
              ),
            )
          ],
        ),
      ),
    );
  }
}
