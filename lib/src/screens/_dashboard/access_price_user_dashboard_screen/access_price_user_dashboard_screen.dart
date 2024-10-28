import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';

import 'widgets/block_item_widget.dart';
import 'widgets/header_widget.dart';
import 'widgets/select_widget.dart';

class AccessPriceUserDashboardScreen extends StatelessWidget {
  const AccessPriceUserDashboardScreen({super.key});
  static final List<Map<String, dynamic>> blockItems = [
    {
      'title':
          LocaleKeys.access_price_user_dashboard_screen_landing_text_1.tr(),
      'elements': [
        {
          'date': '24H',
          'color': const Color.fromRGBO(220, 250, 248, 1),
          'price': [
            {'label': '30 BZC', 'value': '0,15€'},
            {'label': '50 BZC', 'value': '0,25€'},
            {'label': '70 BZC', 'value': '0,35€'},
          ],
          'isSelected': true,
        },
        {
          'date': '7J',
          'color': const Color.fromRGBO(231, 237, 255, 1),
          'price': [
            {'label': '200 BZC', 'value': '1€'},
            {'label': '250 BZC', 'value': '1,25€'},
          ],
          'isSelected': true,
        },
        {
          'date': '30J',
          'color': const Color.fromRGBO(220, 250, 248, 1),
          'price': [
            {'label': '850 BZC', 'value': '4,25€'},
            {'label': '950 BZC', 'value': '4,75€'},
          ],
          'isSelected': true,
        },
      ],
    },
    {
      'title':
          LocaleKeys.access_price_user_dashboard_screen_landing_text_2.tr(),
      'elements': [
        {
          'date': '24H',
          'price': [
            {'label': '70 BZC', 'value': '0,35€'},
            {'label': '90 BZC', 'value': '0,45€'},
          ],
          'isSelected': false,
        },
        {
          'date': '7J',
          'price': [
            {'label': '300 BZC', 'value': '1,5€'},
            {'label': '400 BZC', 'value': '2€'},
          ],
          'isSelected': false,
        },
        {
          'date': '30J',
          'price': [
            {'label': '100 BZC', 'value': '5€'},
            {'label': '1300 BZC', 'value': '6,50€'},
          ],
          'isSelected': false,
        },
      ],
    },
    {
      'title':
          LocaleKeys.access_price_user_dashboard_screen_landing_text_3.tr(),
      'elements': [
        {
          'date': '24H',
          'price': [
            {'label': '90 BZC', 'value': '0,45€'},
            {'label': '100 BZC', 'value': '0,50€'},
          ],
          'isSelected': false,
        },
        {
          'date': '7J',
          'price': [
            {'label': '500 BZC', 'value': '2,5€'},
            {'label': '700 BZC', 'value': '3,50€'},
          ],
          'isSelected': false,
        },
        {
          'date': '30J',
          'price': [
            {'label': '1500 BZC', 'value': '7,5€'},
            {'label': '2000 BZC', 'value': '10€'},
          ],
          'isSelected': false,
        },
      ],
    },
    {
      'title':
          LocaleKeys.access_price_user_dashboard_screen_landing_text_4.tr(),
      'elements': [
        {
          'date': '24H',
          'price': [
            {'label': '150 BZC', 'value': '7,5€'},
            {'label': '200 BZC', 'value': '10€'},
          ],
          'isSelected': false,
        },
        {
          'date': '7J',
          'price': [
            {'label': '1000 BZC', 'value': '7,5€'},
            {'label': '1500 BZC', 'value': '10€'},
          ],
          'isSelected': false,
        },
        {
          'date': '30J',
          'price': [
            {'label': '3500 BZC', 'value': '7,5€'},
            {'label': '5000 BZC', 'value': '10€'},
          ],
          'isSelected': false,
        },
      ],
    },
  ];
  static List<Choise> choicesList = [
    Choise(
      label: LocaleKeys.access_price_user_dashboard_screen_chose_in_list.tr(),
      id: 0,
      selectedValue: null,
      choices: ['10%', '50%', '100%'],
    ),
    Choise(
      label: LocaleKeys.access_price_user_dashboard_screen_chose_in_list.tr(),
      id: 1,
      selectedValue: null,
      choices: ['7J', '30J', '24H'],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(235, 235, 235, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeaderWidget(),
            Container(
              padding: const EdgeInsets.only(
                top: 15,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          LocaleKeys
                              .access_price_user_dashboard_screen_update_acces_price
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: const Color.fromRGBO(0, 0, 0, 0.7),
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 20,
                          color: Color.fromRGBO(186, 185, 185, 1),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 2,
                    color: Color.fromRGBO(244, 244, 244, 1),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 15,
                    ),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(186, 185, 185, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      children: [
                        ...List.generate(blockItems.length, (elementIndex) {
                          final block = blockItems[elementIndex];
                          final elements =
                              blockItems[elementIndex]['elements']!;
                          return BlockItemWidget(
                            landingNumber: '${(elementIndex + 1)}',
                            landingText: block['title'],
                            elements: [
                              ...List.generate(elements.length, (elementIndex) {
                                final element = elements[elementIndex];
                                Color color =
                                    const Color.fromRGBO(231, 237, 255, 1);
                                switch (elementIndex) {
                                  case 0:
                                    color =
                                        const Color.fromRGBO(231, 237, 255, 1);
                                    break;
                                  case 1:
                                    color =
                                        const Color.fromRGBO(255, 245, 217, 1);
                                    break;
                                  case 2:
                                    color =
                                        const Color.fromRGBO(220, 250, 248, 1);
                                    break;
                                  default:
                                    color =
                                        const Color.fromRGBO(220, 250, 248, 1);
                                }
                                return Item(
                                  color: color,
                                  date: element['date']!,
                                  isSelected: element['isSelected']!,
                                  pricesList: element['price']!,
                                );
                              }),
                            ],
                          );
                        }),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(
                              0xFFFCCC37,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 35,
                              vertical: 5,
                            ),
                          ),
                          child: Text(
                            LocaleKeys.access_price_user_dashboard_screen_save
                                .tr(),
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 10,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border:
                    Border.all(color: const Color.fromRGBO(186, 185, 185, 1)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          LocaleKeys
                              .access_price_user_dashboard_screen_aply_reduction
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: const Color.fromRGBO(249, 191, 13, 1),
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 20,
                          color: Color.fromRGBO(186, 185, 185, 1),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      LocaleKeys
                          .access_price_user_dashboard_screen_aply_reduction_text
                          .tr(),
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              LocaleKeys
                                  .access_price_user_dashboard_screen_percent_text
                                  .tr(),
                              style: GoogleFonts.inter(
                                color: const Color.fromRGBO(35, 35, 35, 1),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SelectWidget(
                              item: choicesList[0],
                              setSelectedValue: (_, __) {},
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              LocaleKeys
                                  .access_price_user_dashboard_screen_date_text
                                  .tr(),
                              style: GoogleFonts.inter(
                                color: const Color.fromRGBO(35, 35, 35, 1),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SelectWidget(
                              item: choicesList[1],
                              setSelectedValue: (_, __) {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color(
                        0xFFFCCC37,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 5,
                      ),
                    ),
                    child: Text(
                      LocaleKeys.access_price_user_dashboard_screen_save.tr(),
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
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
