import 'package:flutter/material.dart';
import 'package:must_have_widgets/bt_ui_basic_getx.dart';
import 'package:must_have_widgets/widgets/widget_text_button.dart';

class Homework extends StatefulWidget {
  const Homework({super.key});

  @override
  State<Homework> createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  var like = false;
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Homework'),
        actions: [
          WidgetTextButton(
            element: const HomeWork(),
            text: 'Go to bt_ui_basic_getX file',
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bird.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Item(
                      like
                          ? const Icon(Icons.favorite, color: Colors.red)
                          : const Icon(Icons.favorite),
                      'Like',
                      () {
                        setState(() {
                          like = !like;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: Item(const Icon(Icons.message), 'Comment', () {}),
                  ),
                  Expanded(
                    child: Item(const Icon(Icons.share), 'Share', () {}),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text.rich(
              TextSpan(
                children: [
                  const TextSpan(text: 'currentCounter is: '),
                  TextSpan(
                    text: '$counter',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Item(Icon icon, String title, Function() onPressed) {
  return TextButton(
    style: ButtonStyle(
      foregroundColor: MaterialStateColor.resolveWith(
        (states) => Colors.black,
      ),
    ),
    onPressed: onPressed,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        const SizedBox(width: 5),
        Text(title),
      ],
    ),
  );
}
