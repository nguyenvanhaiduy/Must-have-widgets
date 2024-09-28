import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// ignore: must_be_immutable
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
        // Get.to(element);
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
