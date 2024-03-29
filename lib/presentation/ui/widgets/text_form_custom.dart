import 'package:flutter/material.dart';

class TextFormCustom extends StatelessWidget {
  final String labelText;
  final Function(String)? onTextChanged;
  final bool passwordStyle;

  TextFormCustom({
    required this.labelText,
    this.onTextChanged,
    this.passwordStyle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          labelText.toUpperCase(),
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(
          height: 2.0,
        ),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          onChanged: onTextChanged,
          obscureText: passwordStyle,
        ),
        SizedBox(height: 10.0)
      ],
    );
  }
}
