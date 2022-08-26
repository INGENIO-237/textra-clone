// ignore_for_file: file_names

import 'package:textra/models/conversation.dart';
import 'package:textra/models/message.dart';
import 'package:textra/models/user.dart';

List<User> users = [
  User(name: "Ingenio", image: ""),
  User(name: "Abatron", image: ""),
  User(name: "Jean Jacques", image: ""),
  User(name: "Haris", image: ""),
  User(name: "Yann", image: ""),
];

Conversation conv1 = Conversation(
  partner: users[1],
  messages: [
    Message(
      sender: users[1],
      content: "Yo bro !",
      dateSent: "03/06/2022 20:17",
    ),
    Message(
      sender: users[0],
      content: "Ouaip, comment vas-tu ?",
      dateSent: "03/06/2022 20:19",
    ),
    Message(
      sender: users[1],
      content: "Tranquile, et toi ?",
      dateSent: "03/06/2022 20:23",
    ),
    Message(
      sender: users[0],
      content: "Je vais bien alhmd",
      dateSent: "03/06/2022 20:30",
    ),
  ],
);

Conversation conv2 = Conversation(
  partner: users[2],
  messages: [
    Message(
      sender: users[2],
      content: "Yo bro !",
      dateSent: "03/06/2022 20:17",
    ),
    Message(
      sender: users[0],
      content: "Ouaip, comment vas-tu ?",
      dateSent: "03/06/2022 20:19",
    ),
  ],
);

Conversation conv3 = Conversation(
  partner: users[3],
  messages: [
    Message(
      sender: users[0],
      content: "Yo bro !",
      dateSent: "03/06/2022 20:17",
    ),
    Message(
      sender: users[3],
      content: "Ouaip, comment vas-tu ?",
      dateSent: "03/06/2022 20:19",
    ),
    Message(
      sender: users[0],
      content: "Tranquile, et toi ?",
      dateSent: "03/06/2022 20:23",
    ),
    Message(
      sender: users[3],
      content: "Je vais bien alhmd",
      dateSent: "03/06/2022 20:30",
    ),
  ],
);

List<Conversation> conversations = [
  conv1,
  conv2,
  conv3,
];
