import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Videowidget extends StatefulWidget {
  final String videoUrl;
  const Videowidget({required this.videoUrl, super.key});

  @override
  State<Videowidget> createState() => _VideowidgetState();
}

class _VideowidgetState extends State<Videowidget> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
      ..initialize().then((_) {
        setState(() {
          _controller.play();
          _isPlaying = true;
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      if (_isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
      }
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? GestureDetector(
            onTap: _togglePlayPause,
            child: SizedBox(
              width: double.infinity,
              height: _controller.value.size.height,
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
          )
        : const Center(child: CircularProgressIndicator());
  }
}
