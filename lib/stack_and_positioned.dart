import 'package:flutter/material.dart';

class StackAndPositioned extends StatelessWidget {
  const StackAndPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stacked Squares'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned(
              child: square(
                size.width * 0.7,
                size.height * 0.3,
                Colors.red,
                '1',
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              bottom: size.height * 0.3,
              child: square(
                size.width * 0.3,
                size.height * 0.575,
                Colors.orange,
                '2',
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: square(
                size.width * 0.7,
                size.height * 0.3,
                Colors.blue,
                '3',
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              top: size.height * 0.3,
              child: square(
                size.width * 0.3,
                size.height * 0.575,
                Colors.green,
                '4',
              ),
            ),
            Positioned(
              left: size.width * 0.3,
              right: size.width * 0.3,
              top: size.height * 0.3,
              bottom: size.height * 0.3,
              child: square(
                size.width * 0.3,
                size.height * 0.3,
                Colors.purple,
                '5',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget square(double width, double height, Color color, String text) {
  return Container(
    width: width,
    height: height,
    color: color,
    child: Center(
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 60),
      ),
    ),
  );
}
