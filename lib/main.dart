import 'package:flutter/material.dart';
import 'package:must_have_widgets/login_screen_basic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: StackAndPositioned(),
      home: LoginScreenBasic(),
    );
  }
}
