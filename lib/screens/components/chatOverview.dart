// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:textra/models/conversation.dart';
import 'package:textra/screens/chat.dart';

class ChatOverview extends StatefulWidget {
  final Conversation conversation;

  const ChatOverview({Key? key, required this.conversation}) : super(key: key);

  @override
  State<ChatOverview> createState() => _ChatOverviewState();
}

class _ChatOverviewState extends State<ChatOverview> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateToChat(),
      child: Container(
        padding: const EdgeInsets.all(6),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  widget.conversation.partner.name.characters.first
                      .toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(widget.conversation.partner.name),

                    // Have to find out how to put dynamic space between
                    //the name and the date.

                    // Text(
                    //   widget
                    //       .conversation
                    //       .messages[widget.conversation.messages.length - 1]
                    //       .dateSent
                    //       .substring(11),
                    // ),
                  ],
                ),
                Text(
                  "${widget.conversation.messages[widget.conversation.messages.length - 1].content.substring(0, 15)}...",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 145, 138, 138),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToChat() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: ((context) => Chat(conversation: widget.conversation)),
      ),
    );
  }
}
