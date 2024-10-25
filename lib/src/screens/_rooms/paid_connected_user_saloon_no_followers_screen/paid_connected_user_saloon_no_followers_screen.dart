import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

import 'widgets/header_widget.dart';

class PaidConnectedUserSaloonNoFollowersScreen extends StatelessWidget {
  const PaidConnectedUserSaloonNoFollowersScreen({super.key});
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(250, 250, 250, 1),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 4),
                            blurRadius: 4,
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
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
                              color: const Color.fromRGBO(0, 0, 0, 0.5),
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
                                vertical: 7,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(217, 217, 217, 0),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: const Color.fromRGBO(156, 163, 175, 1),
                                ),
                              ),
                              child: Wrap(
                                alignment: WrapAlignment.spaceBetween,
                                children: [
                                  Text(
                                    textAlign: TextAlign.left,
                                    item['date']!,
                                    style: GoogleFonts.inter(
                                      color: const Color.fromRGBO(0, 0, 0, 0.5),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Text(
                                    textAlign: TextAlign.left,
                                    item['price']!,
                                    style: GoogleFonts.inter(
                                      color: const Color.fromRGBO(0, 0, 0, 0.5),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Text(
                                    textAlign: TextAlign.left,
                                    item['bzc']!,
                                    style: GoogleFonts.inter(
                                      color: const Color.fromRGBO(0, 0, 0, 0.5),
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
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20,
                        top: 20,
                        bottom: 15,
                      ),
                      child: Text(
                        LocaleKeys
                            .paid_connected_user_saloon_no_followers_screen_fans_sallon
                            .tr(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: LocaleKeys
                                  .paid_connected_user_saloon_no_followers_screen_subscribe_left
                                  .tr(),
                              style: GoogleFonts.inter(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: ' @username ',
                              style: GoogleFonts.inter(
                                color: Colors.black.withOpacity(0.9),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: LocaleKeys
                                  .paid_connected_user_saloon_no_followers_screen_subscribe_right
                                  .tr(),
                              style: GoogleFonts.inter(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
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
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
