import "package:flutter/material.dart";
import 'package:frontloops_03/constants.dart';

import "./DateDivider.dart";

class MessengerBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kMessengerBodyPadding),
      child: Column(
        children: [
          DateDivider(text: "TODAY"),
        ],
      ),
    );
  }
}
