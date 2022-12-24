import 'package:chatter/features/chat/views/widgets/chats_conco_widgets/message_input.dart';
import 'package:flutter/material.dart';

import '../widgets/chats_conco_widgets/messages_list.dart';

class ChatConvoScreen extends StatelessWidget {
  const ChatConvoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Ram Bahadur",
              style: TextStyle(
                fontSize: 16,
              ))),
      body: const MessagesList(),
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: const MessageInput(),
      ),
    );
  }
}
