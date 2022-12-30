import 'package:chatter/features/authentication/services/auth_services.dart';
import 'package:chatter/utils/app_routers.dart';
import 'package:chatter/utils/app_routes.dart';
import 'package:chatter/utils/app_theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatterBox extends StatelessWidget {
  const ChatterBox({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<User?>(
        create: (context) => AuthServices.checkAuthState(),
        initialData: null,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightPalette,
            darkTheme: AppTheme.darkPalette,
            initialRoute: AppRoutes.warapper,
            onGenerateRoute: AppRouter.onGenerateRoute,
          );
        });
  }
}
