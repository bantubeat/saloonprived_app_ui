import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String avatarUrl;
  const Avatar({required this.avatarUrl});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(radius: 20.0, backgroundImage: AssetImage(avatarUrl));
  }
}
