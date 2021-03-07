import 'package:flutter/material.dart';

import "./constants.dart";

import "./MessengerContainer.dart";

void main() => runApp(Frontloops());

class Frontloops extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppTitle,
      home: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          title: Text(kAppTitle),
          backgroundColor: kAppBarColor,
        ),
        body: MessengerContainer(),
      ),
    );
  }
}
