import 'package:flutter/foundation.dart';
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
    return FutureBuilder(
      future: _controller.initialize(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return GestureDetector(
            onTap: _togglePlayPause,
            child: SizedBox(
              width: MediaQuery.of(context)
                  .size
                  .width, // Prendre toute la largeur de l'écran
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
