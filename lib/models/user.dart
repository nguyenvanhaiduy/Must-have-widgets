import 'dart:math';

import 'package:flutter/material.dart';
import 'package:must_have_widgets/data/data.dart';

class User {
  User({required this.name, this.url})
      : color = colorData[Random().nextInt(colorData.length)];
  final String name;
  final String? url;
  final Color color;
}
