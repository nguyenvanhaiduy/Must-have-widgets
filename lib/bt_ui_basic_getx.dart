import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class Controller extends GetxController {
  var like = false;
  void changeLike() {
    like = !like;
    update();
  }

  var count = 0;
  void increment() {
    count++;
    update();
  }
}

class HomeWork extends StatelessWidget {
  const HomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Homework'),
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
                    child: GetBuilder<Controller>(
                      builder: (_) => Item(
                        controller.like
                            ? const Icon(Icons.favorite, color: Colors.red)
                            : const Icon(Icons.favorite),
                        'Like',
                        () {
                          controller.changeLike();
                        },
                      ),
                    ),
                  ),
                  Expanded(
                      child: Item(const Icon(Icons.message), 'Comment', () {})),
                  Expanded(
                      child: Item(const Icon(Icons.share), 'Share', () {})),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: GetBuilder<Controller>(
              builder: (_) => Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: 'currentCounter is: '),
                    TextSpan(
                      text: '${controller.count}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
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
