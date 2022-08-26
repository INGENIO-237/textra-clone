import 'package:textra/models/message.dart';
import 'package:textra/models/user.dart';

class Conversation {
  final User partner;
  final List<Message> messages;
  late int numMessages;

  Conversation({
    required this.partner,
    required this.messages,
  });
}
