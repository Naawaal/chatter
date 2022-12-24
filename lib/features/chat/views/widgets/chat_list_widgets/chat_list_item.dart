import 'package:flutter/material.dart';

import '../../../../../utils/app_routes.dart';
import '../../../../shared/widgets/avatar_builder.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.chatConvoScreen);
      },
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const AvatarBuilder(
                      imgUrl:
                          'https://images.unsplash.com/photo-1530954828893-e5b58ccabe31?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80'),
                  const SizedBox(
                    width: 10,
                  ),
                  _bodyBuilder(),
                ],
              ),
              _counterBuilder()
            ],
          ),
        ),
      ),
    );
  }

//--------------------- _bodyBuilder ---------------------
  Widget _bodyBuilder() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Lena Smith',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "I'm doing my homework!",
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  //---------------------  ---------------------
  Widget _counterBuilder() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Text(
        '12',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
  //---------------------  ---------------------
}
