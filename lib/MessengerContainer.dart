import "package:flutter/material.dart";

import "./MessengerTitle.dart";

import "./constants.dart";

class MessengerContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: kContainerColor,
        width: kContainerWidth,
        margin: EdgeInsets.only(top: kContainerTopMargin),
        child: Column(
          children: [
            MessengerTitle(),
          ],
        ),
      ),
    );
  }
}
