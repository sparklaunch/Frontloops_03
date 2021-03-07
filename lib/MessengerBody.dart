import "package:flutter/material.dart";
import 'package:frontloops_03/constants.dart';

import "./DateDivider.dart";
import "./Message.dart";
import "./MessageBrain.dart";
import "./MessageBox.dart";

MessageBrain messageBrain = MessageBrain();

class MessengerBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Message> messages = messageBrain.getMessages();
    return Padding(
      padding: const EdgeInsets.all(kMessengerBodyPadding),
      child: Column(
        children: [
          DateDivider(text: "TODAY"),
          ListView.builder(
            shrinkWrap: true,
            itemCount: messages.length,
            itemBuilder: (BuildContext context, int index) {
              return MessageBox(message: messages[index]);
            },
          ),
        ],
      ),
    );
  }
}
