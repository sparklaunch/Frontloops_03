import "package:flutter/material.dart";

import "./constants.dart";

const double sendFontSize = 20.0;
const double sendLetterSpacing = 1.0;

class MessageTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
        Text(
          "SEND",
          style: TextStyle(
            fontSize: sendFontSize,
            color: kMessengerTitleColor,
            fontWeight: FontWeight.bold,
            letterSpacing: sendLetterSpacing,
          ),
        ),
      ],
    );
  }
}
