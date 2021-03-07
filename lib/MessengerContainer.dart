import "package:flutter/material.dart";

import "./MessengerTitle.dart";
import "./MessengerBody.dart";

import "./constants.dart";

class MessengerContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: kContainerColor,
        width: kContainerWidth,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MessengerTitle(),
            MessengerBody(),
          ],
        ),
      ),
    );
  }
}
