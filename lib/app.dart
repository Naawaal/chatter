import 'package:chatter/utils/app_routers.dart';
import 'package:chatter/utils/app_routes.dart';
import 'package:chatter/utils/app_theme.dart';
import 'package:flutter/material.dart';

class ChatterBox extends StatelessWidget {
  const ChatterBox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightPalette,
      darkTheme: AppTheme.darkPalette,
      initialRoute: AppRoutes.loginScreen,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
