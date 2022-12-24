import 'package:chatter/features/chat/views/widgets/chat_list_widgets/chat_list.dart';
import 'package:chatter/features/shared/widgets/app_input.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: _searchBuilder(),
      ),
      body: const ChatList(),
    );
  }

  Widget _searchBuilder() {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: AppInput(
          hintText: "Serach Friends",
        ),
      ),
    );
  }
}
