import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:must_have_widgets/keno_interface.dart';
import 'package:must_have_widgets/widgets/widget_text_button.dart';

class LoginScreenBasic extends StatefulWidget {
  const LoginScreenBasic({super.key});

  @override
  State<LoginScreenBasic> createState() => _LoginScreenBasicState();
}

class _LoginScreenBasicState extends State<LoginScreenBasic> {
  var username = TextEditingController();
  var password = TextEditingController();
  var showPassword = true;
  var formKey = GlobalKey<FormState>();
  var showInf = false;

  void login() {
    log(username.text);
    log(password.text);
    formKey.currentState?.validate();
    setState(() {
      showInf = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          WidgetTextButton(
            element: const KenoInterface(),
            text: 'Go to keno_interface file',
          ),
        ],
      ),
      body: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Username',
              style: TextStyle(color: Colors.blue),
            ),
            TextField(
              controller: username,
              decoration: const InputDecoration(
                hintText: 'Enter username',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const Text(
              'Password',
              style: TextStyle(color: Colors.blue),
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(
                hintText: 'Enter password',
                prefixIcon: const Icon(Icons.shield_moon_outlined),
                // prefixIcon: Icon(Icons.shield_moon_outlined),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  icon: showPassword
                      ? const Icon(Icons.remove_red_eye_outlined)
                      : const Icon(Icons.remove_red_eye),
                ),
              ),
              obscuringCharacter: '*',
              obscureText: showPassword,
            ),
            // TextFormField(
            //   keyboardType: TextInputType.phone,
            //   decoration: const InputDecoration(),
            //   validator: (value) {
            //     if (value == null || value.isEmpty) {
            //       return 'Value must be not empty';
            //     }
            //     return null;
            //   },
            // ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(0),
                ),
              ),
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                onPressed: () {
                  login();
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: showInf
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Tên đăng nhập và mật khẩu là:'),
                        Text('Username: ${username.text}'),
                        Text('Password: ${password.text}'),
                      ],
                    )
                  : const Spacer(),
            ),
          ],
        ),
      ),
    );
  }
}
