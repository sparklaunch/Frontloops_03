import "package:flutter/material.dart";
import "./Message.dart";

const Color myMessageBoxColor = Color.fromRGBO(227, 235, 245, 1);
const Color yourMessageBoxColor = Color.fromRGBO(240, 240, 240, 1);
const Color errorMessageBoxColor = Color.fromRGBO(254, 186, 186, 1);
const Color timeMarkerColor = Color.fromRGBO(164, 164, 164, 1);

class MessageBox extends StatelessWidget {
  final Message message;
  MessageBox({this.message});
  @override
  Widget build(BuildContext context) {
    Color messageBoxColor;
    String customMinute = this.message.getDateTime().minute.toString();
    if (this.message.getDateTime().minute.toString().length == 1) {
      customMinute = "0${customMinute}";
    }
    if (this.message.getAuthor() == Author.me) {
      messageBoxColor = myMessageBoxColor;
    } else {
      messageBoxColor = yourMessageBoxColor;
    }
    if (this.message.getMessageStatus() == MessageStatus.error) {
      messageBoxColor = errorMessageBoxColor;
    }
    return Column(
      crossAxisAlignment: this.message.getAuthor() == Author.me
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.end,
      children: [
        Text(
          "${this.message.getDateTime().hour}:$customMinute",
          style: TextStyle(
            fontSize: 18.0,
            color: timeMarkerColor,
            fontWeight: FontWeight.w500,
            letterSpacing: -1,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: messageBoxColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              this.message.getText(),
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
      ],
    );
  }
}
