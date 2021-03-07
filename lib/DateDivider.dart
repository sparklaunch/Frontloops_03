import "package:flutter/material.dart";

import "./constants.dart";

const double dividerThickness = 2.0;
const double textOffset = -18.0;
const double horizontalMargin = 10.0;
const double textFontSize = 18.0;
const double textLetterSpacing = -1.0;

class DateDivider extends StatelessWidget {
  final String text;
  DateDivider({this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: dividerThickness,
          color: kDateDividerColor,
        ),
        Transform.translate(
          offset: Offset(0, textOffset),
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: horizontalMargin,
            ),
            child: Text(
              this.text,
              style: TextStyle(
                fontSize: textFontSize,
                color: kDateDividerColor,
                fontWeight: FontWeight.bold,
                letterSpacing: textLetterSpacing,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
