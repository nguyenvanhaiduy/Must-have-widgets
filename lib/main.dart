import 'package:flutter/material.dart';
import 'package:must_have_widgets/login_screen_basic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 245, 239, 239),
      ),
      // home: StackAndPositioned(),
      home: const LoginScreenBasic(),
    );
  }
}
