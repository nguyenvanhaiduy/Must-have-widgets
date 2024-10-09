import 'package:flutter/material.dart';
import 'package:must_have_widgets/data/data.dart';
import 'package:must_have_widgets/list_view/widgets/list_horizontal.dart';
import 'package:must_have_widgets/list_view/widgets/list_vertical.dart';
import 'package:must_have_widgets/models/user.dart';

final List<User> users = List.of(userData);

class ChatMessenger extends StatefulWidget {
  const ChatMessenger({super.key});

  @override
  State<ChatMessenger> createState() => _ChatMessengerState();
}

class _ChatMessengerState extends State<ChatMessenger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messenger'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: TextField(
              cursorColor: Colors.purple,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(2),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.purple,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 8,
              ),
              child: ListHorizontal(
                users: users,
              ),
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListVertical(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/icons8-aperture-30.png',
            ),
            label: 'Story',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (users.isNotEmpty) {
              users.removeAt(0);
            }
          });
        },
        child: const Icon(Icons.delete),
      ),
    );
  }
}
