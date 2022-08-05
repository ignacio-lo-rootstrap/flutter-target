import 'package:flutter/material.dart';
import 'package:flutter_target/screens/sign_up_page.dart';

void main() => runApp(TargetApp());

class TargetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(fontFamily: 'Open Sans'),
      initialRoute: SignUpPage.id,
      routes: {
        SignUpPage.id: (context) => SignUpPage(),
      },
    );
  }
}
