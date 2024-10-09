import 'package:flutter/material.dart';
import 'package:must_have_widgets/custom_avatar/custom_avatar.dart';
import 'package:must_have_widgets/models/user.dart';

class ListHorizontal extends StatelessWidget {
  const ListHorizontal({super.key, required this.users});
  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Column(
          children: [
            CustomAvatar(
              size: 35,
              user: users[index],
            ),
            Text(users[index].name),
          ],
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 10),
      itemCount: users.length,
    );
  }
}
