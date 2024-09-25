import 'package:flutter/material.dart';
import 'package:must_have_widgets/bt_ui_co_ban.dart';
import 'package:must_have_widgets/widgets/widget_text_button.dart';

class RowAndColumn extends StatelessWidget {
  const RowAndColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bài tập về Row, Column'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          WidgetTextButton(
              element: const Homework(), text: 'Go to bt_ui_co_ban file')
        ],
      ),
      body: Center(
        child: SizedBox(
          width: 600,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 180,
                height: 250,
                child: Column(
                  children: [
                    const Text(
                      'Strawberry Pavlova',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Pavlova is a meringue-based dessert named after the Russian ballerine Anna Pavlova. Pavlova featues a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, size: 15),
                            Icon(Icons.star, size: 15),
                            Icon(Icons.star, size: 15),
                            Icon(Icons.star, size: 15),
                            Icon(Icons.star, size: 15),
                          ],
                        ),
                        Text(
                          '170 Reviews',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ItemFooter(
                          'assets/icons/icons8-fridge-50.png',
                          'PREP:',
                          '25 min',
                        ),
                        ItemFooter(
                          'assets/icons/icons8-alarm-clock-24.png',
                          'COOK:',
                          '1 hr',
                        ),
                        ItemFooter(
                          'assets/icons/icons8-restaurant-50.png',
                          'FEEDS:',
                          '4-6',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Image(
                image: AssetImage(
                  'assets/images/cake.jpeg',
                ),
                fit: BoxFit.contain,
                width: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget ItemFooter(String link, String title, String time) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image(
        image: AssetImage(
          link,
        ),
        width: 20,
      ),
      Text(
        title,
        style: const TextStyle(fontSize: 10),
      ),
      const SizedBox(height: 5),
      Text(
        time,
        style: const TextStyle(fontSize: 10),
      )
    ],
  );
}
