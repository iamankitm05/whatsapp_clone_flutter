import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsapp/routes/app_routes.dart';
import 'package:whatsapp/screens/chat/chat_screen.dart';
import 'package:whatsapp/screens/home/home_screen.dart';
import 'package:whatsapp/screens/splash/splash_screen.dart';

class AppRouter {
  AppRouter._() {
    _router = GoRouter(
      routes: _routes,
      initialLocation: AppRoutes.splashScreen.path,
    );
  }

  static final instance = AppRouter._();

  late final GoRouter _router;
  GoRouter get router => _router;

  List<RouteBase> get _routes {
    return [
      GoRoute(
        path: AppRoutes.splashScreen.path,
        name: AppRoutes.splashScreen.name,
        pageBuilder: (context, state) {
          return _buildFadeTransition(context: context, child: SplashScreen());
        },
      ),
      GoRoute(
        path: AppRoutes.homeScreen.path,
        name: AppRoutes.homeScreen.name,
        pageBuilder: (context, state) {
          return _buildFadeTransition(context: context, child: HomeScreen());
        },
      ),
      GoRoute(
        path: AppRoutes.chatScreen.path,
        name: AppRoutes.chatScreen.name,
        pageBuilder: (context, state) {
          return _buildFadeTransition(context: context, child: ChatScreen());
        },
      ),
    ];
  }

  Page<void> _buildFadeTransition({
    required BuildContext context,
    required Widget child,
  }) {
    return CustomTransitionPage(
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}
