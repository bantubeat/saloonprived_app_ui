import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gallery_picker/gallery_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import '../visualized_media_screen.dart';

class CustomMediaPicker extends StatefulWidget {
  const CustomMediaPicker({super.key});

  @override
  State<CustomMediaPicker> createState() => _CustomMediaPickerState();
}

class _CustomMediaPickerState extends State<CustomMediaPicker> {
  GalleryMedia? gallery;
  List<MediaFile> selectedMedias = [];

  @override
  void initState() {
    fetchMedias();
    GalleryPicker.listenSelectedFiles.listen((medias) {
      selectedMedias = medias;
      if (mounted) {
        setState(() {});
      }
    });
    super.initState();
  }

  Future<void> fetchMedias() async {
    gallery = await GalleryPicker.initializeGallery();
    setState(() {});
  }

  bool isImage = true;

  @override
  void dispose() {
    GalleryPicker.disposeSelectedFilesListener();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PickerScaffold(
      backgroundColor: Colors.white,
      onSelect: (List<MediaFile> selectedMedias) {
        this.selectedMedias = selectedMedias;
        if (mounted) {
          setState(() {});
        }
      },
      initSelectedMedia: selectedMedias,
      config: Config(),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: const Color.fromRGBO(217, 217, 217, 1),
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
              top: 35,
            ),
            margin: const EdgeInsets.only(
              bottom: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  LocaleKeys.publish_video_image_camera_screen_select.tr(),
                  style: GoogleFonts.inter(
                    color: AppColors.myDark,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isImage = true;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(244, 244, 244, 1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.image,
                      color: isImage
                          ? AppColors.primary
                          : const Color.fromRGBO(186, 185, 185, 1),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isImage = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(244, 244, 244, 1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.videocam,
                      color: !isImage
                          ? AppColors.primary
                          : const Color.fromRGBO(186, 185, 185, 1),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (mounted) {
                      GalleryPicker.disposeSelectedFilesListener();

                      GalleryPicker.dispose();
                      // Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => VisualizedMediaScreen(
                            isMedia: true,
                            isImage: selectedMedias[0].isImage,
                            file: null,
                            selectedMedias: selectedMedias[0],
                          ),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .transparent, // Couleur orange pour le bouton "Ajouter"
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                  ),
                  child: Text(
                    LocaleKeys.publish_video_image_camera_screen_next.tr(),
                    style: GoogleFonts.inter(
                      color: AppColors.primary,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          gallery != null
              ? Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 7,
                        mainAxisSpacing: 7,
                      ),
                      itemCount: gallery!.recent!.files
                          .where(
                            (file) =>
                                (isImage && file.isImage) ||
                                (!isImage && file.isVideo),
                          )
                          .length,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          // First item is the button
                          return GestureDetector(
                            onTap: () {
                              GalleryPicker.openSheet();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(217, 217, 217, 1),
                                border: Border.all(
                                  width: 0,
                                  color: const Color.fromRGBO(
                                    217,
                                    217,
                                    217,
                                    1,
                                  ),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.photo_library,
                                    size: 30,
                                    color: Color.fromRGBO(186, 185, 185, 1),
                                  ),
                                  Text(
                                    LocaleKeys
                                        .publish_video_image_camera_screen_browse
                                        .tr(),
                                    style: GoogleFonts.inter(
                                      color: const Color.fromRGBO(
                                        186,
                                        185,
                                        185,
                                        1,
                                      ),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }

                        var media = gallery!.recent!.files
                            .where(
                              (file) =>
                                  (isImage && file.isImage) ||
                                  (!isImage && file.isVideo),
                            )
                            .elementAt(index);
                        return GestureDetector(
                          onTap: () {
                            if (mounted && !isImage) {
                              GalleryPicker.disposeSelectedFilesListener();

                              GalleryPicker.dispose();
                              // Navigator.of(context).pop();
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => VisualizedMediaScreen(
                                    isMedia: true,
                                    isImage: media.isImage,
                                    file: null,
                                    selectedMedias: media,
                                  ),
                                ),
                              );
                            }

                            if (selectedMedias.any(
                              (element) => element.id == media.id,
                            )) {
                              selectedMedias.removeWhere(
                                (element) => element.id == media.id,
                              );
                            } else {
                              selectedMedias = [(media)];
                            }
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0,
                                color: const Color.fromRGBO(217, 217, 217, 1),
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  top: 0,
                                  bottom: 0,
                                  right: 0,
                                  left: 0,
                                  child: ThumbnailMedia(
                                    media: media,
                                  ),
                                ),
                                if (isImage)
                                  Positioned(
                                    top: 2,
                                    right: 2,
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        (selectedMedias.any(
                                          (element) => element.id == media.id,
                                        ))
                                            ? Icons.check_circle
                                            : Icons.circle_outlined,
                                        size: 20,
                                        color: (selectedMedias.any(
                                          (element) => element.id == media.id,
                                        ))
                                            ? AppColors.primary
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                // if (isImage)
                                //   Positioned(
                                //     bottom: 5,
                                //     right: 5,
                                //     child: Container(
                                //       alignment: Alignment.center,
                                //       child: Icon(
                                //         (selectedMedias.any(
                                //           (element) => element.id == media.id,
                                //         ))
                                //             ? Icons.check_circle
                                //             : Icons.circle_outlined,
                                //         size: 20,
                                //         color: (selectedMedias.any(
                                //           (element) => element.id == media.id,
                                //         ))
                                //             ? AppColors.primary
                                //             : Colors.white,
                                //       ),
                                //     ),
                                //   ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              : const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
        ],
      ),
    );
  }
}
