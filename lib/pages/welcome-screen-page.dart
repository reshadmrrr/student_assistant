import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student_assistant/constants.dart';
import 'package:student_assistant/pages/edit-profile-page.dart';
import 'package:student_assistant/pages/login-page.dart';
import 'package:student_assistant/pages/otp-page.dart';
import 'package:student_assistant/pages/registration-page.dart';

import '../components/rounded-raised-button.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcome-page';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Hero(
              tag: 'logo',
              child: CircleAvatar(
                radius: width * 0.3,
                backgroundImage: AssetImage(kAppLogo),
              ),
            ),
          ),
          SizedBox(height: height * 0.025),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Hero(
                tag: 'app-title',
                child: Image.asset(kAppTitle),
              ),
            ),
          ),
          SizedBox(height: height * 0.1),
          Text("new?"),
          Hero(
            tag: 'join-us',
            child: RoundedRaisedButton(
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
            child: RoundedRaisedButton(
              width: width,
              height: height,
              title: "Login",
              color: klightred,
              onPressed: () => Navigator.pushNamed(context, LoginScreen.id),
            ),
          ),
          SizedBox(height: height * 0.02),
          RoundedRaisedButton(
            width: width,
            height: height,
            title: "Temporary OTP",
            color: Colors.deepPurple,
            onPressed: () => Navigator.pushNamed(context, OTPScreen.id),
          ),
          SizedBox(height: height * 0.02),
          RoundedRaisedButton(
            width: width,
            height: height,
            title: "Edit Profile",
            color: Colors.lightBlueAccent,
            onPressed: () => Navigator.pushNamed(context, ProfileEditScreen.id),
          ),
        ],
      ),
    );
  }
}
