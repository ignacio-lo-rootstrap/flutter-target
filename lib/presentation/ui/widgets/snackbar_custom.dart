import 'package:flutter/material.dart';

showAlert(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
      ),
      duration: const Duration(seconds: 3),
    ),
  );
}
