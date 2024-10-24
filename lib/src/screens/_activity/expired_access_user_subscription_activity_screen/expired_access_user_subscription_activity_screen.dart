import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

import 'widgets/bock_widget.dart';

class ExpiredAccessUserSubscriptionActivityScreen extends StatelessWidget {
  const ExpiredAccessUserSubscriptionActivityScreen({super.key});
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
          LocaleKeys
              .expired_access_user_subscription_activity_screen_followed_creators
              .tr(),
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
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 7),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.transparent,
                          width: 5,
                        ),
                      ),
                    ),
                    child: Text(
                      LocaleKeys
                          .expired_access_user_subscription_activity_screen_all
                          .tr(),
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 7),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.transparent,
                          width: 5,
                        ),
                      ),
                    ),
                    child: Text(
                      LocaleKeys
                          .expired_access_user_subscription_activity_screen_ongoing_access
                          .tr(),
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 7),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColors.primary,
                          width: 5,
                        ),
                      ),
                    ),
                    child: Text(
                      LocaleKeys
                          .expired_access_user_subscription_activity_screen_expired_access
                          .tr(),
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1,
              color: Color.fromRGBO(186, 185, 185, 1),
            ),
            BockWidget(
              coverImage: AppAssets.imagesPrivedCover,
              name: 'Afrika Kemie',
              subcribeCount: '10k',
              followerCount: '10k',
              profileImage: AppAssets.imagesProfil5,
              currentAcces: currentAcces[0],
            ),
            BockWidget(
              coverImage: AppAssets.imagesPrivedCover,
              name: 'Afrika Kemie',
              subcribeCount: '10k',
              followerCount: '10k',
              profileImage: AppAssets.imagesProfil4,
              currentAcces: currentAcces[1],
            ),
            BockWidget(
              coverImage: AppAssets.imagesPrivedCover,
              name: 'Afrika Kemie',
              subcribeCount: '10k',
              followerCount: '10k',
              profileImage: AppAssets.imagesProfil3,
              currentAcces: currentAcces[2],
            ),
            BockWidget(
              coverImage: AppAssets.imagesPrivedCover,
              name: 'Afrika Kemie',
              subcribeCount: '10k',
              followerCount: '10k',
              profileImage: AppAssets.imagesProfil2,
              currentAcces: currentAcces[0],
            ),
            BockWidget(
              coverImage: AppAssets.imagesPrivedCover,
              name: 'Afrika Kemie',
              subcribeCount: '10k',
              followerCount: '10k',
              profileImage: AppAssets.imagesProfil1,
              currentAcces: currentAcces[0],
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
