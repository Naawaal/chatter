import 'package:chatter/features/authentication/views/screen/login_screen.dart';
import 'package:chatter/features/chat/views/screens/chat_list_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final authState = Provider.of<User?>(context);
    if (authState == null) {
      return const LoginScreen();
    } else {
      return const ChatListScreen();
    }
  }
}
