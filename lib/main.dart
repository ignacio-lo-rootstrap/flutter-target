import 'package:flutter/material.dart';
import 'package:flutter_target/theme/app_theme.dart';
import 'package:flutter_target/ui/screens/sign_up_page.dart';

void main() => runApp(TargetApp());

class TargetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().data,
      initialRoute: SignUpPage.id,
      routes: {
        SignUpPage.id: (context) => SignUpPage(),
      },
    );
  }
}
