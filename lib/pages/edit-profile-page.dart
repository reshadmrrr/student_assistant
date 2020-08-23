import 'package:flutter/material.dart';
import 'package:student_assistant/components/custom-text-field.dart';
import 'package:student_assistant/components/rounded-raised-button.dart';
import 'package:student_assistant/constants.dart';

class ProfileEditScreen extends StatelessWidget {
  static String id = 'profile-edit-screen';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text(
            "Edit Profile",
            style: TextStyle(color: Colors.white),
          ),
          pinned: true,
          expandedHeight: height * 0.35,
          flexibleSpace: FlexibleSpaceBar(
            background: FlexibleAppBar(),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          CustomTextFieldWithPadding(hintText: "Name"),
          CustomTextFieldWithPadding(hintText: "ID"),
          CustomTextFieldWithPadding(hintText: "Email"),
          CustomTextFieldWithPadding(hintText: "Department"),
          CustomTextFieldWithPadding(hintText: "University"),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RoundedRaisedButton(
              width: width,
              height: height,
              title: "Update",
              color: Colors.lightBlueAccent,
              onPressed: () {},
            ),
          )
        ]))
      ],
    ));
  }
}

class CustomTextFieldWithPadding extends StatelessWidget {
  final String hintText;

  const CustomTextFieldWithPadding({
    Key key,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: CustomTextField(hintText: hintText),
    );
  }
}

class FlexibleAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight * 2.5, bottom: 10.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(kAppLogo),
              radius: 50.0,
            ),
            Text(
              "@username",
              style: TextStyle(color: Colors.white, fontSize: 22.0),
            ),
            Text(
              "Department of CSE",
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
