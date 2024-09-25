import 'package:flutter/material.dart';

class WidgetTextButton extends StatelessWidget {
  Widget element;
  String text;
  WidgetTextButton({super.key, required this.element, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => element,
          ),
        );
      },
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
