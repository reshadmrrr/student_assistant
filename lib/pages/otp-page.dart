import 'package:flutter/material.dart';
import 'package:student_assistant/components/pin-text-field.dart';

class OTPScreen extends StatelessWidget {
  static String id = 'otp-screen';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
          child: Container(
        height: height / 3,
        width: width * 0.85,
        padding: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white,
        ),
        child: Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Enter Your Attendance Code",
                style: TextStyle(fontSize: 18.0),
              ),
              Padding(
                padding: EdgeInsets.all(6.0),
                child: PinTextField(
                  fields: 6,
                  showFieldAsBox: true,
                  onSubmit: (pin) => showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Successful"),
                      content: Text('Your attendance is taken'),
                    ),
                  ), //end showDialog()
                  // end onSubmit
                ), // end PinEntryTextField()
              ),
              Text(
                "Having Problem? Report",
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
