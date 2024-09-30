import 'package:flutter/material.dart';

class Regex extends StatefulWidget {
  const Regex({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegexState createState() => _RegexState();
}

class _RegexState extends State<Regex> {
  final formKey = GlobalKey<FormState>();
  final emailRegex = RegExp(
    r'^[{0-9}{a-z}{A-Z}.]+@[{0-9}{a-z}{A-Z}]+\.[{0-9}{a-z}{A-Z}]+$',
  );
  final phoneRegex = RegExp(r'\b0[0-9]{9}\b');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Regex'),
      ),
      body: Expanded(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Email'),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if (!emailRegex.hasMatch(value!)) {
                    return 'Email không hợp lệ';
                  }
                  return null;
                },
              ),
              const Text('Số điện thoại'),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if (!phoneRegex.hasMatch(value!)) {
                    return 'Số điện thoại phải là 10 chữ số và bắt đầu bằng số 0';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
