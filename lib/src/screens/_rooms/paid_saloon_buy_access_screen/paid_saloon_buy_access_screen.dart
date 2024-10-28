import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

import 'widgets/bottom_widget.dart';
import 'widgets/header_widget.dart';

class PaidSaloonBuyAccessScreen extends StatelessWidget {
  const PaidSaloonBuyAccessScreen({super.key});
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 10,
              ),
              margin: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.left,
                    LocaleKeys
                        .paid_connected_user_saloon_no_access_screen_expired_date
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
                      LocaleKeys.paid_saloon_buy_access_screen_renew.tr(),
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
            Text(
              textAlign: TextAlign.center,
              LocaleKeys.paid_saloon_buy_access_screen_buy_access.tr(),
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(0, 0, 0, 1),
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                vertical: 4,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (int i = 0; i < currentAcces.length; i++)
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
                          color: i == 2
                              ? AppColors.primary
                              : const Color.fromRGBO(156, 163, 175, 1),
                        ),
                      ),
                      child: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        children: [
                          Text(
                            textAlign: TextAlign.left,
                            currentAcces[i]['date']!,
                            style: GoogleFonts.inter(
                              color: i == 2
                                  ? AppColors.primary
                                  : const Color.fromRGBO(0, 0, 0, 0.7),
                              fontSize: 10,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.left,
                            currentAcces[i]['price']!,
                            style: GoogleFonts.inter(
                              color: i == 2
                                  ? AppColors.primary
                                  : const Color.fromRGBO(0, 0, 0, 0.7),
                              fontSize: 10,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.left,
                            currentAcces[i]['bzc']!,
                            style: GoogleFonts.inter(
                              color: i == 2
                                  ? AppColors.primary
                                  : const Color.fromRGBO(0, 0, 0, 0.7),
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

            const BottomWidget(),

            //
            //

            // /
            //
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
