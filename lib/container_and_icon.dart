import 'package:flutter/material.dart';
import 'package:must_have_widgets/row_and_column.dart';
import 'package:must_have_widgets/widgets/widget_text_button.dart';

class ContainerAndIcon extends StatelessWidget {
  const ContainerAndIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sử dụng container và icon'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          WidgetTextButton(
            element: const RowAndColumn(),
            text: 'Go to row_and_column file',
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.red,
          ),
          child: const Center(
            child: Icon(
              Icons.star,
              size: 150,
              color: Colors.yellowAccent,
            ),
          ),
        ),
      ),
    );
  }
}
