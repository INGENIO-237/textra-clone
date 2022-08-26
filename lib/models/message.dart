import 'package:textra/models/user.dart';

class Message {
  final User sender;
  final String content;
  final String dateSent;

  Message({
    required this.sender,
    required this.content,
    required this.dateSent,
  });
}
