import 'package:flutter/material.dart';
import 'package:must_have_widgets/models/user.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({
    super.key,
    required this.size,
    this.border = true,
    required this.user,
    this.isUpload = false,
  });
  final bool border;
  final double size;
  final User user;
  final bool isUpload;

  String getName() {
    List<String> names = user.name.split(' ');
    final firstName = names[names.length - 1];
    return firstName[0].toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final avatarName = getName();
    return Container(
      padding: const EdgeInsets.all(2),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: border
            ? Border.all(
                width: 1,
                color: Colors.black,
              )
            : null,
      ),
      child: Stack(
        children: [
          ClipOval(
            child: SizedBox.fromSize(
              size: Size.fromRadius(size),
              child: user.url == null
                  ? Container(
                      decoration: BoxDecoration(
                        color: user.color,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        avatarName,
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Image.asset(
                      user.url!,
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          if (isUpload)
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.upload,
                  color: Colors.red,
                  size: 20,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
