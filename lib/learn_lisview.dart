import 'package:flutter/material.dart';

class LearnListView extends StatelessWidget {
  const LearnListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: ListView.separated(
              // scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  child: test(context, 50),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 300,
            child: GridView.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  return Container(
                      color: Colors.red,
                      child: const Center(
                        child: Text(
                          'data',
                          textAlign: TextAlign.center,
                        ),
                      ));
                }),
          )
        ],
      ),
    );
  }
}

Widget test(BuildContext context, double height) {
  return ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
      return Container(
        margin: const EdgeInsets.all(4),
        height: 30,
        color: Colors.blue,
        child: Text('$index'),
      );
    },
  );
}
