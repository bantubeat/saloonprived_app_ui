import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

import 'widget/bock_widget.dart';

class BlockedUserActivityScreen extends StatelessWidget {
  const BlockedUserActivityScreen({super.key});

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
          LocaleKeys.blocked_user_activity_screen_blocked_user.tr(),
          style: GoogleFonts.inter(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              color: Color.fromRGBO(186, 185, 185, 1),
            ),
            BockWidget(
              coverImage: AppAssets.imagesPrivedCover,
              name: 'Afrika Kemie',
              subcribeCount: '10k',
              followerCount: '10k',
              profileImage: AppAssets.imagesProfil5,
            ),
            BockWidget(
              coverImage: AppAssets.imagesPrivedCover,
              name: 'Afrika Kemie',
              subcribeCount: '10k',
              followerCount: '10k',
              profileImage: AppAssets.imagesProfil4,
            ),
            BockWidget(
              coverImage: AppAssets.imagesPrivedCover,
              name: 'Afrika Kemie',
              subcribeCount: '10k',
              followerCount: '10k',
              profileImage: AppAssets.imagesProfil3,
            ),
            BockWidget(
              coverImage: AppAssets.imagesPrivedCover,
              name: 'Afrika Kemie',
              subcribeCount: '10k',
              followerCount: '10k',
              profileImage: AppAssets.imagesProfil2,
            ),
            BockWidget(
              coverImage: AppAssets.imagesPrivedCover,
              name: 'Afrika Kemie',
              subcribeCount: '10k',
              followerCount: '10k',
              profileImage: AppAssets.imagesProfil1,
            ),
            SizedBox(
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
