import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

import 'widgets/live_tab.dart';
import '../free_connected_user_saloon_screen/widgets/video_tab.dart';
import 'widgets/header_widget.dart';
import 'widgets/image_tab.dart';

class PaidConnectedUserSaloonWithFollowersScreen extends StatelessWidget {
  const PaidConnectedUserSaloonWithFollowersScreen({super.key});
  static List<Map<String, String>> currentAcces = [
    {
      'date': LocaleKeys.paid_connected_user_saloon_no_followers_screen_hour
          .tr(args: ['24']),
      'price': '\$ 4.7',
      'bzc': '56 BZC',
    },
    {
      'date': LocaleKeys.paid_connected_user_saloon_no_followers_screen_day
          .tr(args: ['7']),
      'price': '\$ 4.7',
      'bzc': '56 BZC',
    },
    {
      'date': LocaleKeys.paid_connected_user_saloon_no_followers_screen_day
          .tr(args: ['30']),
      'price': '\$ 4.7',
      'bzc': '56 BZC',
    }
  ];
  static List<Map<String, dynamic>> myData = [
    {
      'subcribe': '110k',
      'username': '@Créole',
    },
    {
      'subcribe': '200',
      'username': '@Créole',
    },
    {
      'subcribe': '90k',
      'username': '@Créole',
    },
    {
      'subcribe': '20k',
      'username': '@Pièrre',
    },
    {
      'subcribe': '100k',
      'username': '@Pièrre',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: LayoutBuilder(
          builder: (context, constraints) => Column(
            children: [
              const HeaderWidget(),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 3),
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
                          bottom:
                              BorderSide(color: AppColors.primary, width: 2),
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
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 10,
                        ),
                        margin: const EdgeInsets.symmetric(
                          vertical: 3,
                        ),
                        child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              textAlign: TextAlign.left,
                              LocaleKeys
                                  .paid_connected_user_saloon_with_followers_screen_expired_date
                                  .tr(),
                              style: GoogleFonts.inter(
                                color: const Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.left,
                              '00J. 00:00:00',
                              style: GoogleFonts.inter(
                                color: AppColors.primary,
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(
                                  0xFFFCCC37,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                LocaleKeys
                                    .paid_connected_user_saloon_with_followers_screen_renew
                                    .tr(),
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 2,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 7),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(250, 250, 250, 1),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              LocaleKeys
                                  .paid_connected_user_saloon_no_followers_screen_buy_access
                                  .tr(),
                              style: GoogleFonts.inter(
                                color: const Color.fromRGBO(0, 0, 0, 0.7),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            for (var item in currentAcces)
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 10,
                                ),
                                margin: const EdgeInsets.symmetric(
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(217, 217, 217, 0),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color:
                                        const Color.fromRGBO(156, 163, 175, 1),
                                  ),
                                ),
                                child: Wrap(
                                  alignment: WrapAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      textAlign: TextAlign.left,
                                      item['date']!,
                                      style: GoogleFonts.inter(
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.7),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Text(
                                      textAlign: TextAlign.left,
                                      item['price']!,
                                      style: GoogleFonts.inter(
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.7),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Text(
                                      textAlign: TextAlign.left,
                                      item['bzc']!,
                                      style: GoogleFonts.inter(
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.7),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: constraints.maxHeight * .6,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        color: Colors.white,
                        child: const TabBarView(
                          children: [
                            VideoTab(),
                            ImageTab(),
                            LiveTab(),
                          ],
                        ),
                      ),
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
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
