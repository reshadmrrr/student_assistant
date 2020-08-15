import 'package:flutter/material.dart';
import 'package:student_assistant/components/custom-text-field.dart';
import 'package:student_assistant/components/rounded-raised-button.dart';

import '../constants.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'login-screen';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Hero(
                tag: 'logo',
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(kAppLogo),
                ),
              ),
            ),
            Flexible(
              child: Hero(
                tag: 'app-title',
                child: Image.asset(kAppTitle),
              ),
            ),
            SizedBox(height: 30.0),
            Flexible(
              flex: 3,
              child: ListView(
                children: [
                  CustomTextField(
                    hintText: "Your Username",
                    inputType: TextInputType.name,
                    color: Colors.red,
                  ),
                  CustomTextField(
                    hintText: "Your Password",
                    inputType: TextInputType.visiblePassword,
                    color: Colors.red,
                    hasPassword: true,
                  ),
                  Text(
                    "Login with other accounts",
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
                  ),
                ],
              ),
            ),
            Hero(
              tag: 'login',
              child: RoundedRaisedButton(
                width: double.infinity,
                height: height,
                title: "Login",
                color: klightred,
                onPressed:
                    () {}, //Navigator.pushNamed(context, LoginScreen.id),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
