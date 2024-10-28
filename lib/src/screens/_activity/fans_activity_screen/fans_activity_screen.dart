import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

import 'widgets/block_widget.dart';

class FansActivityScreen extends StatelessWidget {
  const FansActivityScreen({super.key});
  static List<Map<String, String>> currentAcces = [
    {
      'date': LocaleKeys.expired_access_user_subscription_activity_screen_hour
          .tr(args: ['24']),
      'price': '\$4.7',
      'bzc': '56BZC',
    },
    {
      'date': LocaleKeys.expired_access_user_subscription_activity_screen_day
          .tr(args: ['7']),
      'price': '\$4.7',
      'bzc': '56BZC',
    },
    {
      'date': LocaleKeys.expired_access_user_subscription_activity_screen_day
          .tr(args: ['30']),
      'price': '\$4.7',
      'bzc': '56BZC',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Color.fromRGBO(20, 20, 43, 1),
          size: 20,
        ),
        centerTitle: true,
        title: Text(
          LocaleKeys.fans_activity_screen_fans.tr(),
          style: GoogleFonts.inter(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                '1500',
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(151, 151, 151, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
            ),
            const Divider(
              height: 1,
              color: Color.fromRGBO(186, 185, 185, 1),
            ),
            const BlockWidget(
              coverImage: AppAssets.imagesPrivedCover,
              name: 'Afrika Kemie',
              subcribeCount: '10k',
              followerCount: '10k',
              profileImage: AppAssets.imagesProfil5,
              isFollowes: false,
            ),
            const BlockWidget(
              coverImage: AppAssets.imagesPrivedCover,
              name: 'Afrika Kemie',
              subcribeCount: '10k',
              followerCount: '10k',
              profileImage: AppAssets.imagesProfil4,
              isFollowes: true,
            ),
            const BlockWidget(
              coverImage: AppAssets.imagesPrivedCover,
              name: 'Afrika Kemie',
              subcribeCount: '10k',
              followerCount: '10k',
              profileImage: AppAssets.imagesProfil3,
              isFollowes: false,
            ),
            const BlockWidget(
              coverImage: AppAssets.imagesPrivedCover,
              name: 'Afrika Kemie',
              subcribeCount: '10k',
              followerCount: '10k',
              profileImage: AppAssets.imagesProfil2,
              isFollowes: true,
            ),
            const BlockWidget(
              coverImage: AppAssets.imagesPrivedCover,
              name: 'Afrika Kemie',
              subcribeCount: '10k',
              followerCount: '10k',
              profileImage: AppAssets.imagesProfil1,
              isFollowes: false,
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
