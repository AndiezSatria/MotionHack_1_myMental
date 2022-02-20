part of 'models.dart';

class ChatEntity {
  String body;
  String seen;
  ChatType chatType;

  ChatEntity({
    required this.body,
    required this.seen,
    required this.chatType,
  });
}

enum ChatType { Sent, Received }
