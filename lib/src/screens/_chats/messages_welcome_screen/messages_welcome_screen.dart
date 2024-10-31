import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/utils/image_service.dart';

import 'widgets/video_widget.dart';

class MessagesWelcomeScreen extends StatefulWidget {
  const MessagesWelcomeScreen({super.key});

  @override
  State<MessagesWelcomeScreen> createState() => _MessagesWelcomeScreenState();
}

class _MessagesWelcomeScreenState extends State<MessagesWelcomeScreen> {
  XFile? file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.close),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Wrap(
                alignment: WrapAlignment.spaceAround,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    LocaleKeys.messages_welcome_screen_messages
                        .tr()
                        .toUpperCase(),
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    LocaleKeys.messages_welcome_screen_channel
                        .tr()
                        .toUpperCase(),
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(24, 24, 24, 0.2),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Icon(
                    Icons.settings,
                    color: Color.fromRGBO(249, 191, 13, 1),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color.fromRGBO(217, 217, 217, 1),
              height: 1,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LocaleKeys.messages_welcome_screen_description.tr(),
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          LocaleKeys.messages_welcome_screen_write_message.tr(),
                          style: GoogleFonts.inter(
                            color: const Color.fromRGBO(143, 139, 139, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const TextField(
                          minLines: 5,
                          maxLines: 6,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              LocaleKeys.messages_welcome_screen_add_video.tr(),
                              style: GoogleFonts.inter(
                                color: const Color.fromRGBO(143, 139, 139, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                LocaleKeys.messages_welcome_screen_comment_text
                                    .tr(),
                                style: GoogleFonts.inter(
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 6,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: const Color.fromRGBO(186, 185, 185, 1),
                            ),
                          ),
                          child: file != null
                              ? VideoWidget(
                                  onClose: () {},
                                  file: file,
                                )
                              : InkWell(
                                  onTap: () async {
                                    final files = await ImageService.pickVideo(
                                      context,
                                      ImageSource.gallery,
                                    );

                                    if (files != null) {
                                      setState(() {
                                        file = files;
                                      });
                                    }
                                  },
                                  child: SizedBox(
                                    height: 175,
                                    width: MediaQuery.of(context).size.width,
                                    child: const Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        if (file != null)
                          Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () async {
                                final files = await ImageService.pickVideo(
                                  context,
                                  ImageSource.gallery,
                                );

                                if (files != null) {
                                  setState(() {
                                    file = files;
                                  });
                                }
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Text(
                                  LocaleKeys
                                      .messages_welcome_screen_change_media
                                      .tr(),
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Wrap(
                            alignment: WrapAlignment.spaceAround,
                            children: [
                              if (file != null)
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      file = null;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors
                                        .black, // Couleur noire pour le bouton "Annuler"
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 25,
                                      vertical: 15,
                                    ),
                                  ),
                                  child: Text(
                                    LocaleKeys.messages_welcome_screen_delete
                                        .tr(),
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ElevatedButton(
                                onPressed: () {
                                  // Action pour ajouter
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(
                                    0xFFFCCC37,
                                  ), // Couleur orange pour le bouton "Ajouter"
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 25,
                                    vertical: 15,
                                  ),
                                ),
                                child: Text(
                                  LocaleKeys.messages_welcome_screen_save.tr(),
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
