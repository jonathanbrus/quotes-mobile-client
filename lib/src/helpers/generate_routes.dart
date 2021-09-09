import 'package:flutter/material.dart';

import '../screens/edit_profile.dart';
import '../screens/about.dart';
import '../screens/terms.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case EditProfileScreen.routeName:
        return MaterialPageRoute(builder: (ctx) => EditProfileScreen());

      case AboutScreen.routeName:
        return MaterialPageRoute(builder: (ctx) => AboutScreen());

      case TermsScreen.routeName:
        return MaterialPageRoute(builder: (ctx) => TermsScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text("Something went wrong"),
        ),
      );
    });
  }
}
