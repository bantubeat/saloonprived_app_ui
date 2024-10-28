import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({
    required this.file,
    super.key,
  });
  final File file;

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.file(
      widget.file,
    )..initialize().then((_) {
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
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height - 90,
        maxWidth: MediaQuery.of(context).size.width,
        minHeight: 300,
        minWidth: MediaQuery.of(context).size.width - 20,
      ),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          if (_controller.value.isInitialized)
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
            ),
          if (!_controller.value.isInitialized)
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
                color: Colors.white,
                size: 56,
              ),
            ),
          Positioned(
            top: 0,
            right: 0,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Column(
                children: [
                  const Icon(
                    Icons.cancel_outlined,
                    size: 26,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    LocaleKeys.publish_video_image_camera_screen_cancer.tr(),
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 10,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: VideoProgressIndicator(
                          _controller,
                          allowScrubbing: true,
                          colors: const VideoProgressColors(
                            playedColor: Color.fromRGBO(252, 204, 55, 1),
                            bufferedColor: Color.fromRGBO(186, 185, 185, 0.5),
                            backgroundColor: Color.fromRGBO(186, 185, 185, 0.5),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// VoidCallback? videoPlayerListener;
// VideoPlayerController? videoController;
// @override
// void initState() {
//   super.initState();
//   init();
// }

// Future<void> init() async {
//   VideoPlayerController? vController = !widget.isImage
//       ? VideoPlayerController.file(File(widget.file.path))
//       : null;

//   videoPlayerListener = () {
//     if (videoController != null) {
//       // Refreshing the state to update video player with the correct ratio.
//       if (mounted) {
//         setState(() {});
//       }
//       videoController!.removeListener(videoPlayerListener!);
//     }
//   };
//   if (vController != null) {
//     vController.addListener(videoPlayerListener!);
//     await vController.setLooping(true);
//     await vController.initialize();
//     await videoController?.dispose();
//     if (mounted) {
//       setState(() {
//         videoController = vController;
//       });
//     }
//     await vController.play();
//   }
// }

// @override
// void dispose() {
//   super.dispose();
//   if (widget.controller != null) {
//     // widget.controller!.dispose();
//   }
//   if (videoController != null) {
//     videoController!.dispose();
//   }
// }
