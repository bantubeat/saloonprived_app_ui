import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/screens/_rooms/free_connected_user_saloon_screen/widgets/favorite_tab.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'widgets/header_widget.dart';
import 'widgets/image_tab.dart';
import 'widgets/live_tab.dart';
import 'widgets/video_tab.dart';

class FreeConnectedUserSaloonScreen extends StatelessWidget {
  const FreeConnectedUserSaloonScreen({super.key});

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
                              .free_connected_user_saloon_screen_free_salon
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
                  InkWell(
                    onTap: () {},
                    child: Text(
                      LocaleKeys.free_connected_user_saloon_screen_paid_salon
                          .tr(),
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(0, 0, 0, 0.7),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              color: Colors.white,
              child: const TabBar(
                labelColor: AppColors.primary,
                unselectedLabelColor: Color.fromRGBO(143, 139, 139, 1),
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

            //
            //
            //
            //
            //

            Expanded(
              child: Container(
                color: Colors.white,
                child: const TabBarView(
                  children: [
                    VideoTab(),
                    ImageTab(),
                    LiveTab(),
                    FavoriteTab(),
                  ],
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
