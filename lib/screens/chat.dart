import 'package:flutter/material.dart';
import 'package:textra/models/conversation.dart';
import 'package:textra/screens/components/chatBubble.dart';

class Chat extends StatefulWidget {
  final Conversation conversation;
  const Chat({Key? key, required this.conversation}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        title: Text(widget.conversation.partner.name),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_downward_rounded),
          )
        ],
      ),
      body: ListView(
        children: widget.conversation.messages
            .map((message) =>
                Bubble(conversation: widget.conversation, message: message))
            .toList(),
      ),
    );
  }
}
