import 'package:chatter/features/authentication/views/screen/forget_password.dart';
import 'package:chatter/features/chat/views/screens/chat_convo_screen.dart';
import 'package:chatter/features/chat/views/screens/chat_list_screen.dart';
import 'package:chatter/utils/app_routes.dart';
import 'package:chatter/wrapper.dart';
import 'package:flutter/material.dart';

import '../features/authentication/views/screen/login_screen.dart';
import '../features/authentication/views/screen/register.dart';

class AppRouter {
  static Route onGenerateRoute(final RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.loginScreen:
        return _buildRoute(settings, const LoginScreen());
      case AppRoutes.registerScreen:
        return _buildRoute(settings, const RegisterScreen());
      case AppRoutes.forgotPasswordScreen:
        return _buildRoute(settings, const ForgetScreen());
      case AppRoutes.chatListScreen:
        return _buildRoute(settings, const ChatListScreen());
      case AppRoutes.chatConvoScreen:
        return _buildRoute(settings, const ChatConvoScreen());
      case AppRoutes.warapper:
        return _buildRoute(settings, const Wrapper());
      default:
        return _buildRoute(settings, const LoginScreen());
    }
  }

  //--------------------------------- _buidRoutes -------------------------------------------//
  static Route _buildRoute(
    final RouteSettings settings,
    final Widget widget,
  ) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => widget,
    );
  }
}
