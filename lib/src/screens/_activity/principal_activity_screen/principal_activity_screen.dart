import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

import 'widget/block_widget.dart';

class PrincipalActivityScreen extends StatelessWidget {
  const PrincipalActivityScreen({super.key});

  static final List<Map<String, dynamic>> discussions = [
    {
      'title': LocaleKeys.principal_activity_screen_my_followers.tr(),
      'subtitle':
          LocaleKeys.principal_activity_screen_followers.tr(args: ['1,6k']),
      'avatar': [
        AppAssets.imagesProfil2,
        AppAssets.imagesProfil3,
        AppAssets.imagesProfil4,
      ],
    },
    {
      'title': LocaleKeys.principal_activity_screen_my_subscriptions.tr(),
      'subtitle':
          LocaleKeys.principal_activity_screen_subscriptions.tr(args: ['1,6k']),
      'avatar': [
        AppAssets.imagesProfil3,
        AppAssets.imagesProfil4,
        AppAssets.imagesProfil5,
      ],
    },
    {
      'title': LocaleKeys.principal_activity_screen_blocked.tr(),
      'subtitle': LocaleKeys.principal_activity_screen_user.tr(args: ['1,6k']),
      'avatar': [
        AppAssets.imagesProfil5,
        AppAssets.imagesProfil4,
        AppAssets.imagesProfil2,
      ],
    },
    // Ajoutez plus de discussions ici
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
        title: Text(
          LocaleKeys.principal_activity_screen_title.tr(),
          style: GoogleFonts.inter(
            color: const Color.fromRGBO(0, 0, 0, 1),
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Divider(
            color: Color.fromRGBO(217, 217, 217, 1),
            height: 1,
          ),
          const SizedBox(
            height: 9,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: discussions.length,
              itemBuilder: (context, index) {
                final discussion = discussions[index];
                return BlockWidget(
                  discussion: discussion,
                  index: index,
                );
              },
            ),
          ),
          const Divider(
            color: Color.fromRGBO(217, 217, 217, 1),
            height: 1,
          ),
        ],
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
