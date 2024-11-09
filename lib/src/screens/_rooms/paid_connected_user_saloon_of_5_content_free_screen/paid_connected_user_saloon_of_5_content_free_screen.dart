import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/button_with_icon.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'widgets/header_widget.dart';

class PaidConnectedUserSaloonOf5ContentFreeScreen extends StatelessWidget {
  const PaidConnectedUserSaloonOf5ContentFreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            const HeaderWidget(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        LocaleKeys.paid_connected_user_saloon_of_5_content_free_screen_free_salon.tr(),
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(0, 0, 0, 0.7),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 2),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: AppColors.primary, width: 2),
                            ),
                          ),
                          child: Text(
                            LocaleKeys.paid_connected_user_saloon_of_5_content_free_screen_paid_salon.tr(),
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: const TabBar(
                labelColor: AppColors.myGray,
                unselectedLabelColor: AppColors.myGray,
                dividerColor: Color.fromRGBO(235, 235, 235, 1),
                indicator: BoxDecoration(),
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.videocam,
                      size: 25,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.image,
                      size: 25,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      MaterialCommunityIcons.video_plus_outline,
                      size: 25,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.bookmark,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      LocaleKeys
                          .paid_connected_user_saloon_of_5_content_free_screen_welcome_to_paid_salon
                          .tr(),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      LocaleKeys
                          .paid_connected_user_saloon_of_5_content_free_screen_paid_salon_reserved_for_fans
                          .tr(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 12),
                    ),
                    const SizedBox(height: 26),
                    Text(
                      LocaleKeys
                          .paid_connected_user_saloon_of_5_content_free_screen_cannot_upload_videos_yet
                          .tr(),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        LocaleKeys
                            .paid_connected_user_saloon_of_5_content_free_screen_must_have_5_content_free
                            .tr(),
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LocaleKeys
                              .paid_connected_user_saloon_of_5_content_free_screen_have_5_content_free
                              .tr(),
                          style: const TextStyle(fontSize: 12),
                        ),
                        Text(
                          LocaleKeys
                              .paid_connected_user_saloon_of_5_content_free_screen_configure_access_price
                              .tr(),
                          style: const TextStyle(fontSize: 12),
                        ),
                        Text(
                          LocaleKeys
                              .paid_connected_user_saloon_of_5_content_free_screen_validate_identity_procedure
                              .tr(),
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    IntrinsicWidth(
                      stepWidth: 100,
                      child: ButtonWithIcon(
                        text: LocaleKeys
                            .paid_connected_user_saloon_of_5_content_free_screen_add_more_video
                            .tr(),
                        backgroundColor: AppColors.myDark,
                        color: AppColors.myWhite,
                        icon: const Icon(
                          MaterialCommunityIcons.plus_box_multiple_outline,
                          color: AppColors.myWhite,
                        ),
                        onPressed: (_) {},
                      ),
                    ),
                    const SizedBox(height: 120),
                  ],
                ),
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
