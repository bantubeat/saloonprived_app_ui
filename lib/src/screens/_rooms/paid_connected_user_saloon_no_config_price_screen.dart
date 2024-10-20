import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'free_connected_user_saloon_screen/widgets/header_widget.dart';

class PaidConnectedUserSaloonNoConfigPriceScreen extends StatelessWidget {
  const PaidConnectedUserSaloonNoConfigPriceScreen({super.key});

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
                          .paid_connected_user_saloon_config_price_screen_free_salon
                          .tr(),
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(0, 0, 0, 0.7),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      bottom: 2,
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: AppColors.primary, width: 2),
                      ),
                    ),
                    child: Text(
                      LocaleKeys
                          .paid_connected_user_saloon_config_price_screen_paid_salon
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
            ),
            Container(
              color: Colors.white,
              child: const TabBar(
                labelColor: Color.fromRGBO(143, 139, 139, 0.5),
                unselectedLabelColor: Color.fromRGBO(143, 139, 139, 0.5),
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
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 0,
                      ),
                      Text(
                        LocaleKeys
                            .paid_connected_user_saloon_no_config_price_screen_welcome_to_paid_salon
                            .tr(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        LocaleKeys
                            .paid_connected_user_saloon_no_config_price_screen_paid_salon_reserved_for_fans
                            .tr(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(0, 0, 0, 0.7),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        LocaleKeys
                            .paid_connected_user_saloon_no_config_price_screen_cannot_upload_videos_yet
                            .tr(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        LocaleKeys
                            .paid_connected_user_saloon_no_config_price_screen_must_configure_access_before_uploading
                            .tr(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(0, 0, 0, 0.7),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 30,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: [
                            const Icon(
                              Icons.settings,
                              size: 20,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              LocaleKeys
                                  .paid_connected_user_saloon_no_config_price_screen_configure_my_access
                                  .tr(),
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
