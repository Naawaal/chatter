import 'package:chatter/features/chat/views/widgets/chat_list_widgets/chat_list_item.dart';
import 'package:flutter/cupertino.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ChatListItem();
      },
    );
  }
}
