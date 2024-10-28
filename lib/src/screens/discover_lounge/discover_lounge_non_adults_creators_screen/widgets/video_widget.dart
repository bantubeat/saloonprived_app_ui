import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  final String videoUrl;
  const VideoWidget({required this.videoUrl, super.key});

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();

    if (isInTestMode) {
      _controller = VideoPlayerController.asset('');
      return;
    }

    // Initialisation du contrôleur vidéo
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));

    // Initialisation du lecteur vidéo avec gestion des erreurs
    _controller.initialize().then((_) {
      setState(() {
        _controller.play();
        _isPlaying = true;
      });
    }).catchError((error) {
      if (kDebugMode) {
        print("Erreur lors de l'initialisation du lecteur vidéo : $error");
      }
    });
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool get isInTestMode {
    return Platform.environment.containsKey('FLUTTER_TEST');
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
    if (isInTestMode) return const Center(child: CircularProgressIndicator());

    return FutureBuilder(
      future: _controller.initialize(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return InkWell(
            onTap: _togglePlayPause,
            child: SizedBox(
              // Prendre toute la largeur de l'écran
              width: MediaQuery.of(context).size.width,
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: _controller.value.size.width,
                    height: _controller.value.size.height,
                    child: VideoPlayer(_controller),
                  ),
                ),
              ),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
