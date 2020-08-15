import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student_assistant/constants.dart';
import 'package:student_assistant/pages/login-page.dart';
import 'package:student_assistant/pages/otp-page.dart';
import 'package:student_assistant/pages/registration-page.dart';
import 'package:student_assistant/pages/welcome-screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then(
    (_) => runApp(MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Assistant',
      theme: kdefaultTheme,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationPage.id: (context) => RegistrationPage(),
        LoginScreen.id: (context) => LoginScreen(),
        OTPScreen.id: (context) => OTPScreen(),
      },
    );
  }
}
