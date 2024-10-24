import 'package:flutter/material.dart';

class VideoCaption extends StatelessWidget {
  final String videoDescription;
  const VideoCaption({required this.videoDescription});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Text(
        videoDescription,
        style: const TextStyle(
          fontSize: 10,
          color: Colors.white,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
