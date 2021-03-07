import "package:flutter/material.dart";

import "./constants.dart";

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
            fontSize: 20.0,
            color: kMessengerTitleColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
      ],
    );
  }
}
