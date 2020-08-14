import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student_assistant/constants.dart';

import 'components/welcomepage-rounded-button.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcome-page';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Hero(
                    tag: 'logo',
                    child: CircleAvatar(
                      radius: width * 0.15,
                      backgroundImage: AssetImage(kAppLogo),
                    ),
                  ),
                ),
                Flexible(child: Image.asset(kAppTitle)),
              ],
            ),
            Text("new?"),
            WelcomePageButton(
              width: width,
              height: height,
              title: "Join Us",
              color: klightBlue,
            ),
            SizedBox(height: height * 0.02),
            Text("already have an account?"),
            WelcomePageButton(
              width: width,
              height: height,
              title: "Login",
              color: klightred,
            )
          ],
        ),
      ),
    );
  }
}
