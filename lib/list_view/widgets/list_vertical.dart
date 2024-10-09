import 'package:flutter/material.dart';
import 'package:must_have_widgets/custom_avatar/custom_avatar.dart';
import 'package:must_have_widgets/data/data.dart';
import 'package:must_have_widgets/models/user.dart';

class ListVertical extends StatelessWidget {
  const ListVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final List<User> users = List.of(userData);
    return ListView.separated(
      itemBuilder: (context, index) {
        return Row(
          children: [
            (index % 2 == 0)
                ? CustomAvatar(
                    size: 30,
                    border: false,
                    user: users[index],
                    isUpload: true,
                  )
                : CustomAvatar(
                    size: 30,
                    border: false,
                    user: users[index],
                  ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(users[index].name),
                const Text('ban dang lam gi do'),
              ],
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: users.length,
    );
  }
}
