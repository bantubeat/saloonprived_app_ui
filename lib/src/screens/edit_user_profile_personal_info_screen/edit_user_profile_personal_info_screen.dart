import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

import 'widgets.dart/bio_tab.dart';
import 'widgets.dart/edit_profile_tab.dart';
import 'widgets.dart/header_widget.dart';
import 'widgets.dart/social_network_tab.dart';

class EditUserProfilePersonalInfoScreen extends StatelessWidget {
  const EditUserProfilePersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            const HeaderWidget(),
            Expanded(
              child: Column(
                children: <Widget>[
                  TabBar(
                    labelColor: AppColors.primary,
                    unselectedLabelColor: AppColors.myDark,
                    dividerColor: AppColors.myGray,
                    labelStyle:
                        GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                    dividerHeight: 4,
                    indicator: const BoxDecoration(),
                    tabs: [
                      Tab(
                        text: LocaleKeys
                            .edit_user_profile_personal_info_screen_profile_title
                            .tr(),
                      ),
                      Tab(
                        text: LocaleKeys
                            .edit_user_profile_personal_info_screen_bio_title
                            .tr(),
                      ),
                      Tab(
                        text: LocaleKeys
                            .edit_user_profile_personal_info_screen_social_networks_title
                            .tr(),
                      ),
                    ],
                  ),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        EditProfileTab(),
                        BioTab(),
                        SocialNetworkTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
