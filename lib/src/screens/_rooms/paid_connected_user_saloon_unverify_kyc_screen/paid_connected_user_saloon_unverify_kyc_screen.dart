import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/components/primary_button.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'widgets/header_widget.dart';

class PaidConnectedUserSaloonUnverifyKycScreen extends StatelessWidget {
  const PaidConnectedUserSaloonUnverifyKycScreen({super.key});

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
              child: Wrap(
                alignment: WrapAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      LocaleKeys
                          .paid_connected_user_saloon_unverify_kyc_screen_free_salon
                          .tr(),
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(0, 0, 0, 0.7),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          bottom: 2,
                        ),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(color: AppColors.primary, width: 2),
                          ),
                        ),
                        child: Text(
                          LocaleKeys
                              .paid_connected_user_saloon_unverify_kyc_screen_paid_salon
                              .tr(),
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
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
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      LocaleKeys
                          .paid_connected_user_saloon_unverify_kyc_screen_title1
                          .tr(),
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      LocaleKeys
                          .paid_connected_user_saloon_unverify_kyc_screen_message1
                          .tr(),
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 60),
                    Text(
                      LocaleKeys
                          .paid_connected_user_saloon_unverify_kyc_screen_title2
                          .tr(),
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      LocaleKeys
                          .paid_connected_user_saloon_unverify_kyc_screen_message2
                          .tr(),
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    IntrinsicWidth(
                      stepWidth: 200,
                      child: PrimaryButton(
                        text: LocaleKeys
                            .paid_connected_user_saloon_unverify_kyc_screen_button_text
                            .tr(),
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
