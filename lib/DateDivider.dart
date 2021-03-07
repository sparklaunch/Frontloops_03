import "package:flutter/material.dart";

import "./constants.dart";

class DateDivider extends StatelessWidget {
  final String text;
  DateDivider({this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 2.0,
          color: kDateDividerColor,
        ),
        Transform.translate(
          offset: Offset(0, -18),
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Text(
              this.text,
              style: TextStyle(
                fontSize: 18.0,
                color: kDateDividerColor,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
