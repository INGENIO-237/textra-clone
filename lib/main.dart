import 'package:flutter/material.dart';
import 'package:textra/screens/chats.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Textra',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Chats(),
    );
  }
}
