import 'package:flutter/cupertino.dart';

import 'messages_list_item.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: 12,
      itemBuilder: (context, index) => MessagesListItem(
        isMyMessage: index % 2 == 0,
      ),
    );
  }
}
