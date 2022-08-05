import 'package:flutter/material.dart';

class TextFormCustom extends StatelessWidget {
  TextFormCustom(this.labelText);

  late final String labelText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          labelText.toUpperCase(),
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
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
        ),
        SizedBox(height: 10.0)
      ],
    );
  }
}
