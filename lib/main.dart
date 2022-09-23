import 'package:flutter/material.dart';
import 'package:flutter_target/presentation/navigation/navigation.dart';
import 'package:flutter_target/presentation/theme/app_theme.dart';
import 'package:flutter_target/presentation/ui/pages/sign_in_page.dart';

void main() => runApp(TargetApp());

class TargetApp extends StatelessWidget {
  final Navigation _navigation = Navigation();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().data,
      initialRoute: SignInPage.id,
      onGenerateRoute: _navigation.onGenerateRoute,
    );
  }
}
