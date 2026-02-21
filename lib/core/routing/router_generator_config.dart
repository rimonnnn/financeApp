import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/features/auth/login_screen.dart';
import 'package:finance_ui/features/onbording_Screen/on_bording_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterGeneratorConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBordingScreen,
    routes: [
      GoRoute(
          path: AppRoutes.onBordingScreen,
          name: AppRoutes.onBordingScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const OnBordingScreen();
        }),
      GoRoute(
          path: AppRoutes.loginScreen,
          name: AppRoutes.loginScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const LoginScreen();
        })  
    ]
  );
}
