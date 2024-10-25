import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/src/screens/_rooms/opend_post_saloon_free_and_paid_screen/video_full_screen.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({
    required this.onClose,
    super.key,
  });
  final Function() onClose;

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://samplelib.com/lib/preview/mp4/sample-5s.mp4',
      ),
    );

    // Initialisation du lecteur vidéo avec gestion des erreurs
    _controller.initialize().then((_) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String _formatDuration(Duration duration, Duration totalDuration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    String twoDigitMinutes = twoDigits(totalDuration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(totalDuration.inSeconds.remainder(60));
    return '$minutes:$seconds/$twoDigitMinutes:$twoDigitSeconds ';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 140,
            minWidth: 240,
          ),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              if (_controller.value.isInitialized)
                AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ),
              InkWell(
                onTap: () {
                  setState(() {
                    _controller.value.isPlaying
                        ? _controller.pause()
                        : _controller.play();
                  });
                },
                child: Icon(
                  _controller.value.isPlaying
                      ? Icons.pause_circle_filled_rounded
                      : Icons.play_circle_filled_rounded,
                  color: const Color.fromRGBO(249, 191, 13, 1),
                  size: 56,
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: 0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        verticalDirection: VerticalDirection.up,
                        children: [
                          Expanded(
                            child: VideoProgressIndicator(
                              _controller,
                              allowScrubbing: true,
                              colors: const VideoProgressColors(
                                playedColor: Color.fromRGBO(252, 204, 55, 1),
                                bufferedColor:
                                    Color.fromRGBO(186, 185, 185, 0.5),
                                backgroundColor:
                                    Color.fromRGBO(186, 185, 185, 0.5),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          ValueListenableBuilder(
                            valueListenable: _controller,
                            builder: (context, VideoPlayerValue value, child) {
                              return Text(
                                _formatDuration(
                                  value.position,
                                  _controller.value.duration,
                                ),
                                style: GoogleFonts.inter(
                                  fontSize: 6,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _controller.value.isPlaying
                                      ? _controller.pause()
                                      : _controller.play();
                                });
                              },
                              child: Icon(
                                _controller.value.isPlaying
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            const Icon(
                              Icons.volume_down_sharp,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const VideoFullScreen(
                                    data: {
                                      'url':
                                          'https://videos.pexels.com/video-files/7699696/7699696-uhd_1440_2732_24fps.mp4',
                                    },
                                  ),
                                ),
                              );
                            },
                            child: Icon(
                              _controller.value.isPlaying
                                  ? Icons.fullscreen
                                  : Icons.fullscreen,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'thinking about so raining',
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(249, 191, 13, 1),
                          fontSize: 6,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
