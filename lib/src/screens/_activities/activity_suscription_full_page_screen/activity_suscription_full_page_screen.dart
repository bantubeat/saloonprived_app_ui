import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

import 'widgets/followed_creator_item.dart';
import 'dart:ui' as ui;

class ActivitySuscriptionFullPageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>
      _ActivitySuscriptionFullPageScreenState();
}

class _ActivitySuscriptionFullPageScreenState
    extends State<ActivitySuscriptionFullPageScreen> {
  int activeLinkIndex = 0;

  // Fonction qui retourne le contenu en fonction du lien actif
  Widget getContentForActiveLink() {
    if (activeLinkIndex == 0) {
      return ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: FollowedCreatorItem(
              coverImage: AppAssets.imagesActivityProfileCout,
              profileImage: AppAssets.imagesActivityProfile,
              username: 'Nadia Kamala',
              suscriberCount: 10000,
              suscriptionCount: 10000,
              likeCount: 10700,
              consultationCount: 10,
              viewCount: 10,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FollowedCreatorItem(
              coverImage: AppAssets.imagesActivityProfileCout,
              profileImage: AppAssets.imagesActivityProfile,
              username: 'Nadia Kamala',
              suscriberCount: 1000,
              suscriptionCount: 1000,
              likeCount: 10700,
              consultationCount: 10,
              viewCount: 10,
            ),
          ),
        ],
      );
    } else if (activeLinkIndex == 1) {
      return ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FollowedCreatorItem(
              coverImage: AppAssets.imagesActivityProfileCout,
              profileImage: AppAssets.imagesActivityProfile,
              username: 'Nadia Kamala',
              suscriberCount: 1000,
              suscriptionCount: 1000,
              likeCount: 10700,
              consultationCount: 10,
              viewCount: 10,
            ),
          ),
        ],
      );
    } else {
      return ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FollowedCreatorItem(
              coverImage: AppAssets.imagesActivityProfileCout,
              profileImage: AppAssets.imagesActivityProfile,
              username: 'Nadia Kamala',
              suscriberCount: 1000,
              suscriptionCount: 1000,
              likeCount: 10700,
              consultationCount: 10,
              viewCount: 10,
            ),
          ),
        ],
      );
    }
  }

  // Fonction pour calculer la largeur du texte afin de définir la largeur du soulignement
  double getTextWidth(String text) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
      maxLines: 1,
      textDirection: ui.TextDirection.ltr,
    )..layout();

    return textPainter.size.width;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          LocaleKeys.activity_suscription_full_page_screen_followed_creator
              .tr(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color(0xFFF4F4F4),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Lien "Tous"
              GestureDetector(
                onTap: () {
                  setState(() {
                    activeLinkIndex = 0;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      LocaleKeys.common_all.tr(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    if (activeLinkIndex == 0)
                      Container(
                        margin: const EdgeInsets.only(top: 2.0),
                        height: 5,
                        color: AppColors.primary,
                        width: getTextWidth(
                          LocaleKeys.common_all.tr(),
                        ),
                      ),
                  ],
                ),
              ),
              // Lien "En cours"
              GestureDetector(
                onTap: () {
                  setState(() {
                    activeLinkIndex = 1;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      LocaleKeys.common_access_in_progress.tr(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    if (activeLinkIndex == 1)
                      Container(
                        margin: const EdgeInsets.only(top: 2.0),
                        height: 5,
                        color: AppColors.primary,
                        width: getTextWidth(
                          LocaleKeys.common_access_in_progress.tr(),
                        ),
                      ),
                  ],
                ),
              ),
              // Lien "Expiré"
              GestureDetector(
                onTap: () {
                  setState(() {
                    activeLinkIndex = 2;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      LocaleKeys.common_access_expired.tr(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    if (activeLinkIndex == 2)
                      Container(
                        margin: const EdgeInsets.only(top: 2.0),
                        height: 5,
                        color: AppColors.primary,
                        width: getTextWidth(
                          LocaleKeys.common_access_expired.tr(),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.0,
            color: Color(0xFFBAB9B9),
            height: 1,
          ),
          // Contenu de la section active
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: getContentForActiveLink(),
            ),
          ),
        ],
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
