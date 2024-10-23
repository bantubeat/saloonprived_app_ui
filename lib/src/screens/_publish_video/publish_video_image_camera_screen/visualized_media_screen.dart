import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:gallery_picker/models/media_file.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';

import 'widgets/image_widget.dart';
import 'widgets/video_widget.dart';

class VisualizedMediaScreen extends StatefulWidget {
  const VisualizedMediaScreen({
    required this.file,
    required this.isImage,
    required this.isMedia,
    this.selectedMedias,
    super.key,
  });
  final File? file;
  final bool isImage;
  final bool isMedia;
  final MediaFile? selectedMedias;

  @override
  State<VisualizedMediaScreen> createState() => _VisualizedMediaScreenState();
}

class _VisualizedMediaScreenState extends State<VisualizedMediaScreen> {
  File? files;
  @override
  void initState() {
    super.initState();
    if (widget.selectedMedias != null) {
      getFileFromMeiaFile(widget.selectedMedias!);
    }
  }

  void getFileFromMeiaFile(MediaFile file) async {
    files = await file.getFile();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isMedia && widget.selectedMedias != null && files != null) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget.selectedMedias!.isImage
                  ? Expanded(
                      child: SingleChildScrollView(
                        child: ImageWidget(
                          images: files!,
                        ),
                      ),
                    )
                  : Expanded(
                      child: Center(
                        child: VideoWidget(
                          file: files!,
                        ),
                      ),
                    ),
              Container(
                height: 70,
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 13,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Action pour ajouter
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFCCC37),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 5,
                    ),
                  ),
                  child: Text(
                    LocaleKeys.publish_video_image_camera_screen_next.tr(),
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (widget.file != null)
              widget.isImage
                  ? Expanded(
                      child: ImageWidget(
                        images: widget.file!,
                      ),
                    )
                  : VideoWidget(
                      file: widget.file!,
                    ),
            Container(
              height: 70,
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 13,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Action pour ajouter
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(
                    0xFFFCCC37,
                  ), // Couleur orange pour le bouton "Ajouter"
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 5,
                  ),
                ),
                child: Text(
                  LocaleKeys.publish_video_image_camera_screen_next.tr(),
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
