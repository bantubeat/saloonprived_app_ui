import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

import 'widgets/chart_widget.dart';
import 'widgets/header_widget.dart';
import 'widgets/item_widget.dart';

class IncomeUserDashboardScreen extends StatelessWidget {
  const IncomeUserDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(235, 235, 235, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: const Color.fromRGBO(244, 244, 244, 1),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      LocaleKeys.income_user_dashboard_screen_salonprived_keys
                          .tr(),
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      LocaleKeys.income_user_dashboard_screen_per_month.tr(),
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: const EdgeInsets.all(1),
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(64, 114, 238, 1),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  LocaleKeys.income_user_dashboard_screen_access
                                      .tr(),
                                  style: GoogleFonts.inter(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black.withOpacity(0.45),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(249, 191, 13, 1),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  LocaleKeys.income_user_dashboard_screen_tip
                                      .tr(),
                                  style: GoogleFonts.inter(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black.withOpacity(0.45),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              LocaleKeys.income_user_dashboard_screen_revenue
                                  .tr(),
                              style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.45),
                              ),
                            ),
                            Expanded(
                              child: Wrap(
                                alignment: WrapAlignment.end,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Text(
                                    '2024',
                                    style: GoogleFonts.roboto(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromRGBO(49, 57, 77, 1),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 3,
                                    height: 3,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(184, 197, 211, 1),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Mai',
                                    style: GoogleFonts.roboto(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromRGBO(49, 57, 77, 1),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 3,
                                    height: 3,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(184, 197, 211, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: 150,
                          margin: const EdgeInsets.all(1),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                          ),
                          child: const MyLineChart(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: const Color.fromRGBO(244, 244, 244, 1),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  ItemWidget(
                    bottomImage: AppAssets.imagesIntersect1,
                    percent: 0.75,
                    color: const Color.fromRGBO(54, 159, 255, 1),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(54, 159, 255, 0.4),
                        offset: Offset(0, 10),
                        blurRadius: 30,
                      ),
                    ],
                    title: LocaleKeys.income_user_dashboard_screen_access.tr(),
                    fillPercentColor: const Color.fromRGBO(235, 235, 235, 1),
                    unFillPercentColor: const Color.fromRGBO(0, 110, 211, 0.4),
                    image: AppAssets.imagesMoeda,
                    showTopVector: true,
                  ),
                  ItemWidget(
                    bottomImage: AppAssets.imagesIntersect2,
                    percent: 0.75,
                    color: const Color.fromRGBO(252, 204, 55, 1),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(54, 159, 255, 0.4),
                        offset: Offset(0, 10),
                        blurRadius: 30,
                      ),
                    ],
                    title: LocaleKeys.income_user_dashboard_screen_access.tr(),
                    fillPercentColor: const Color.fromRGBO(227, 98, 98, 1),
                    unFillPercentColor: const Color.fromRGBO(235, 235, 235, 1),
                    image: AppAssets.imagesCubes,
                    showTopVector: false,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: const Color.fromRGBO(244, 244, 244, 1),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      LocaleKeys.income_user_dashboard_screen_byYear.tr(),
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 2,
                    ),
                    padding: const EdgeInsets.all(
                      10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              LocaleKeys
                                  .income_user_dashboard_screen_generalRevenue
                                  .tr(),
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(67, 65, 65, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Icon(Icons.chevron_left),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '2024',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Icon(Icons.chevron_right),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PieChartSample(),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  BottomItem(
                                    label: LocaleKeys
                                        .income_user_dashboard_screen_general
                                        .tr(),
                                    color: const Color.fromRGBO(0, 109, 31, 1),
                                    value: '80365 BZC',
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  BottomItem(
                                    label: LocaleKeys
                                        .income_user_dashboard_screen_access
                                        .tr(),
                                    color:
                                        const Color.fromRGBO(144, 144, 144, 1),
                                    value: '80365 BZC',
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  BottomItem(
                                    label: LocaleKeys
                                        .income_user_dashboard_screen_tip
                                        .tr(),
                                    color:
                                        const Color.fromRGBO(144, 144, 144, 1),
                                    value: '80365 BZC',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
