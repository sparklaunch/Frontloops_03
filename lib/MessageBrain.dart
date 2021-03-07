import "./Message.dart";

class MessageBrain {
  List<Message> _messages = [
    Message(
      text: "Hi, Mark! I made a new design for Messenger App.",
      date: DateTime(2021, 3, 7, 10, 53, 0),
      author: Author.me,
      messageStatus: MessageStatus.success,
    ),
    Message(
      text: "Yo! Send it to my assistant and we'll review it during the year.",
      date: DateTime(2021, 3, 7, 10, 57, 00),
      author: Author.you,
      messageStatus: MessageStatus.success,
    ),
    Message(
      text: "But Mark...",
      date: DateTime(2021, 3, 7, 11, 3, 00),
      author: Author.me,
      messageStatus: MessageStatus.success,
    ),
    Message(
      text: "You were blocked by the user.",
      date: DateTime(2021, 3, 7, 11, 4, 00),
      author: Author.you,
      messageStatus: MessageStatus.error,
    ),
  ];
  List<Message> getMessages() {
    return this._messages;
  }
}
