import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dựng Layout tương đối từ design có sẵn'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 239, 239, 239),
                offset: Offset(7, 7),
                blurRadius: 10,
              )
            ],
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/image.jpeg'),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 30,
                left: 20,
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Intermediate',
                    style: TextStyle(color: Colors.blue[800]),
                  ),
                ),
              ),
              const Positioned(
                top: 80,
                left: 20,
                child: Text(
                  'Today\'s\nchallange',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const Positioned(
                top: 170,
                left: 20,
                child: Text(
                  'German meals',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              const Positioned(
                bottom: 40,
                left: 15,
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/red.jpeg'),
                      width: 30,
                    ),
                    Text(
                      'Take this lesson to\nearn a new milestone',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
