// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:textra/models/conversation.dart';
import 'package:textra/models/message.dart';

class Bubble extends StatelessWidget {
  final Conversation conversation;
  final Message message;
  const Bubble({Key? key, required this.conversation, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic pos = conversation.partner.name == message.sender.name
        ? MainAxisAlignment.start
        : MainAxisAlignment.end;
    dynamic col = conversation.partner.name == message.sender.name
        ? const Color.fromARGB(255, 80, 168, 239)
        : const Color.fromARGB(255, 225, 223, 223);
    dynamic colText = conversation.partner.name == message.sender.name
        ? Colors.white
        : Colors.black;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: pos,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: col,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              message.content,
              style: TextStyle(color: colText),
            ),
          ),
        ],
      ),
    );
  }
}
