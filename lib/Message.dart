enum Author { you, me }

enum MessageStatus { success, error }

class Message {
  String _text;
  DateTime _date;
  Author _author;
  MessageStatus _messageStatus;
  Message({
    String text,
    DateTime date,
    Author author,
    MessageStatus messageStatus,
  }) {
    this._text = text;
    this._date = date;
    this._author = author;
    this._messageStatus = messageStatus;
  }
}
