import 'package:camera/camera.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';

class TopRightWidget extends StatelessWidget {
  const TopRightWidget({
    required this.controller,
    required this.camera,
    required this.enableAudio,
    required this.isImage,
    required this.onNewCameraSelected,
    required this.onAudioModeButtonPressed,
    super.key,
  });
  final CameraController? controller;
  final List<CameraDescription> camera;
  final bool enableAudio;
  final bool isImage;
  final Future<void> Function(CameraDescription cameraDescription)
      onNewCameraSelected;
  final void Function() onAudioModeButtonPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            if (controller != null) {
              if (controller!.description.lensDirection ==
                      CameraLensDirection.front &&
                  camera.isNotEmpty) {
                onNewCameraSelected(camera[0]);
              } else if (camera.length > 1) {
                onNewCameraSelected(camera[1]);
              }
            }
          },
          child: Column(
            children: [
              const Icon(
                Icons.sync,
                size: 26,
                color: Colors.white,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                LocaleKeys.publish_video_image_camera_screen_renverse.tr(),
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        if (!isImage)
          InkWell(
            onTap: () {
              onAudioModeButtonPressed();
            },
            child: Column(
              children: [
                Icon(
                  enableAudio ? Icons.volume_up_outlined : Icons.volume_off,
                  size: 26,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  LocaleKeys.publish_video_image_camera_screen_muet.tr(),
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {},
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
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
