import 'package:chatter/features/shared/widgets/avatar_builder.dart';
import 'package:flutter/material.dart';

class MessagesListItem extends StatelessWidget {
  final bool isMyMessage;
  const MessagesListItem({
    super.key,
    required this.isMyMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isMyMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        AvatarBuilder(
            imgUrl: isMyMessage
                ? 'https://i.pinimg.com/736x/78/2f/03/782f032235bd4b00c80de140b8e70538.jpg'
                : "https://i0.wp.com/www.smartprix.com/bytes/wp-content/uploads/2022/11/Naruto.jpg?fit=1280%2C720&ssl=1"),
        const SizedBox(
          height: 10,
        ),
        _messageBox(context),
      ],
    );
  }

//----------------------------- _messageBox() -----------------------------
  Widget _messageBox(final BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: isMyMessage ? Colors.transparent : primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(isMyMessage ? 10 : 0),
            topRight: Radius.circular(isMyMessage ? 0 : 10),
            bottomRight: const Radius.circular(10),
            bottomLeft: const Radius.circular(10),
          ),
          border: Border.all(
            color: isMyMessage ? primaryColor : Colors.transparent,
          ),
        ),
        padding: const EdgeInsets.all(10),
        child: Text(
            isMyMessage
                ? "Hi I'm Monkey D Luffy \n I'm the captain of the Straw Hat Pirates"
                : "Hi I'm Naruto Uzumaki \n I'm the Hokage of Konoha",
            style: TextStyle(
              fontSize: 16,
              color: isMyMessage ? primaryColor : Colors.white,
            )),
      ),
    );
  }
}
