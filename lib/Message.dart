import "package:flutter/foundation.dart";

enum Author { you, me }

enum MessageStatus { success, error }

class Message {
  String _text;
  DateTime _date;
  Author _author;
  MessageStatus _messageStatus;
  Message({
    @required String text,
    @required DateTime date,
    @required Author author,
    @required MessageStatus messageStatus,
  }) {
    this._text = text;
    this._date = date;
    this._author = author;
    this._messageStatus = messageStatus;
  }
  String getText() {
    return this._text;
  }

  DateTime getDateTime() {
    return this._date;
  }

  Author getAuthor() {
    return this._author;
  }

  MessageStatus getMessageStatus() {
    return this._messageStatus;
  }
}
