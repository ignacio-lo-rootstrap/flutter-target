import 'package:flutter/material.dart';
import 'package:flutter_target/presentation/ui/pages/sign_in_page.dart';
import 'package:flutter_target/presentation/ui/pages/sign_up_page.dart';

class Navigation {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SignUpPage.id:
        return MaterialPageRoute(
          builder: (_) => SignUpPage(),
        );
      case SignInPage.id:
        return MaterialPageRoute(
          builder: (_) => SignInPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => SignUpPage(),
        );
    }
  }
}
