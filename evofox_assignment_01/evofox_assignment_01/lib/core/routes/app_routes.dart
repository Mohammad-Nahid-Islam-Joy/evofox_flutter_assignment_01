import 'package:evofox_assignment_01/pages/onboarding/welcome_page.dart';
import 'package:evofox_assignment_01/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  const AppRoutes._();

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static const String initialRoute = SplashPage.name;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashPage.name:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SplashPage(),
        );

      case WelcomePage.name:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const WelcomePage(),
        );

      default:
        return _errorRoute(settings);
    }
  }

  static Route<dynamic> _errorRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text("Page not Found")),
        body: Center(child: Text("NO route defined for ${settings.name}")),
      ),
    );
  }
}
