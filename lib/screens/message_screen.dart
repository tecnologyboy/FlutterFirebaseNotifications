import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  static const String routeName = 'message';

  const MessageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message'),
      ),
      body: const Center(
        child: Text(
          'Message screen',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
