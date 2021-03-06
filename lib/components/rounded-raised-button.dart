import 'package:flutter/material.dart';

class RoundedRaisedButton extends StatelessWidget {
  const RoundedRaisedButton({
    Key key,
    @required this.width,
    @required this.height,
    this.title,
    this.color = Colors.lightBlueAccent,
    this.onPressed,
  }) : super(key: key);

  final double width;
  final double height;
  final String title;
  final Color color;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.6,
      height: height * 0.05,
      child: RaisedButton(
        onPressed: onPressed,
        color: color,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        child: Text(title),
        textColor: Colors.white,
      ),
    );
  }
}
