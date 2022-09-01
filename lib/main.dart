import 'package:flutter/material.dart';
import 'package:flutter_target/presentation/theme/app_theme.dart';
import 'package:flutter_target/presentation/ui/pages/sign_in_page.dart';
import 'package:flutter_target/presentation/ui/pages/sign_up_page.dart';

void main() => runApp(TargetApp());

class TargetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().data,
      initialRoute: SignInPage.id,
      routes: {
        SignInPage.id: (context) => SignInPage(),
        SignUpPage.id: (context) => SignUpPage(),
      },
    );
  }
}
