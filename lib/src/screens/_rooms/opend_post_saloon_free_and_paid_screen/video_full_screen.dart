import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';
import 'package:video_player/video_player.dart';

import 'opend_post_saloon_free_and_paid_screen.dart';
import 'widgets/comment_modal.dart';
import 'widgets/icon_row_widget.dart';

class VideoFullScreen extends StatefulWidget {
  const VideoFullScreen({this.data, super.key});
  final Map<String, dynamic>? data;

  @override
  State<VideoFullScreen> createState() => _VideoFullScreenState();
}

class _VideoFullScreenState extends State<VideoFullScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    if (widget.data != null) {
      _controller = VideoPlayerController.networkUrl(
        Uri.parse(
          widget.data!['url'],
        ),
      )..initialize().then((_) {
          setState(() {});
        });
    }
  }

  @override
  void dispose() {
    if (widget.data != null) {
      _controller.dispose();
    }
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

  bool isZoom = false;
  void onPressIcon(int index, BuildContext context) {
    if (index == 1) {
      CommentModal.show(
        context,
        comments: OpendPostSaloonFreeAndPaidScreen.comments,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.1),
      body: widget.data != null
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height,
                      minWidth: MediaQuery.of(context).size.width,
                    ),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Positioned.fill(
                          child: BackdropFilter(
                            filter:
                                ImageFilter.blur(sigmaX: 81.5, sigmaY: 81.5),
                            child: Container(
                              color: Colors.black.withOpacity(0.1),
                            ),
                          ),
                        ),
                        if (_controller.value.isInitialized)
                          Positioned.fill(
                            child: AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: FittedBox(
                                fit: isZoom ? BoxFit.cover : BoxFit.fitWidth,
                                child: SizedBox(
                                  width: _controller.value.size.width,
                                  height: _controller.value.size.height,
                                  child: VideoPlayer(_controller),
                                ),
                              ),
                            ),
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
                          left: 10,
                          top: 10,
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(
                                  AppAssets.imagesProfil5,
                                ),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Text(
                                'James J Call',
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              const Icon(
                                Icons.verified_outlined,
                                color: Colors.white,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 10,
                          right: 10,
                          bottom: 20,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  verticalDirection: VerticalDirection.up,
                                  children: [
                                    Expanded(
                                      child: VideoProgressIndicator(
                                        _controller,
                                        allowScrubbing: true,
                                        colors: const VideoProgressColors(
                                          playedColor:
                                              Color.fromRGBO(252, 204, 55, 1),
                                          bufferedColor:
                                              Color.fromRGBO(0, 0, 0, 0.3),
                                          backgroundColor:
                                              Color.fromRGBO(0, 0, 0, 0.3),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    ValueListenableBuilder(
                                      valueListenable: _controller,
                                      builder: (
                                        context,
                                        VideoPlayerValue value,
                                        child,
                                      ) {
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
                              const SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                          size: 25,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.volume_down_sharp,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 40.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          isZoom = !isZoom;
                                        });
                                      },
                                      child: Icon(
                                        isZoom
                                            ? Icons.fullscreen_exit
                                            : Icons.fullscreen,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: IconRowWidget(
                    isRepost: false,
                    isOldPost: false,
                    textColor: Colors.white,
                    likes: 120,
                    comments: 45,
                    reposts: 12,
                    shares: 30,
                    onPressIcon: (index) {
                      onPressIcon(index, context);
                    },
                  ),
                ),
              ],
            )
          : const SizedBox(),
    );
  }
}
