import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';

import 'widgets/block_item_widget.dart';
import 'widgets/header_widget.dart';

class PaidConnectedUserSaloonConfigPriceScreen extends StatelessWidget {
  const PaidConnectedUserSaloonConfigPriceScreen({super.key});
  static final List<Map<String, dynamic>> blockItems = [
    {
      'title': LocaleKeys
          .paid_connected_user_saloon_config_price_screen_followers_count
          .tr(args: ['0', '999']),
      'elements': [
        {
          'title': LocaleKeys
              .paid_connected_user_saloon_config_price_screen_acces_hour
              .tr(args: ['24']),
          'price': '€0,15 - €0,25 - €0,35',
          'isSelected': true,
        },
        {
          'title': LocaleKeys
              .paid_connected_user_saloon_config_price_screen_acces_day
              .tr(args: ['7']),
          'price': '€1 - €1,25',
          'isSelected': true,
        },
        {
          'title': LocaleKeys
              .paid_connected_user_saloon_config_price_screen_acces_day
              .tr(args: ['30']),
          'price': '€4,25 - €4,75',
          'isSelected': true,
        },
      ],
    },
    {
      'title': LocaleKeys
          .paid_connected_user_saloon_config_price_screen_followers_count
          .tr(
        args: ['10.000', '49.999'],
      ),
      'elements': [
        {
          'title': LocaleKeys
              .paid_connected_user_saloon_config_price_screen_acces_hour
              .tr(args: ['24']),
          'price': '€0,35 - €0,45',
          'isSelected': false,
        },
        {
          'title': LocaleKeys
              .paid_connected_user_saloon_config_price_screen_acces_day
              .tr(args: ['7']),
          'price': '€1,5 - €2',
          'isSelected': false,
        },
        {
          'title': LocaleKeys
              .paid_connected_user_saloon_config_price_screen_acces_day
              .tr(args: ['30']),
          'price': '€5 - €6,5',
          'isSelected': false,
        },
      ],
    },
    {
      'title': LocaleKeys
          .paid_connected_user_saloon_config_price_screen_followers_count
          .tr(args: ['10.000', '49.999']),
      'elements': [
        {
          'title': LocaleKeys
              .paid_connected_user_saloon_config_price_screen_acces_hour
              .tr(args: ['24']),
          'price': '€0,45 - €0,5',
          'isSelected': false,
        },
        {
          'title': LocaleKeys
              .paid_connected_user_saloon_config_price_screen_acces_day
              .tr(args: ['7']),
          'price': '€2,5 - €3,5',
          'isSelected': false,
        },
        {
          'title': LocaleKeys
              .paid_connected_user_saloon_config_price_screen_acces_day
              .tr(args: ['30']),
          'price': '€7,5 - €10',
          'isSelected': false,
        },
      ],
    },
    {
      'title': LocaleKeys
          .paid_connected_user_saloon_config_price_screen_followers_counts
          .tr(
        args: ['50.000'],
      ),
      'elements': [
        {
          'title': LocaleKeys
              .paid_connected_user_saloon_config_price_screen_acces_hour
              .tr(args: ['24']),
          'price': '€0,75 - €1',
          'isSelected': false,
        },
        {
          'title': LocaleKeys
              .paid_connected_user_saloon_config_price_screen_acces_day
              .tr(args: ['7']),
          'price': '€5 - €7,5',
          'isSelected': false,
        },
        {
          'title': LocaleKeys
              .paid_connected_user_saloon_config_price_screen_acces_day
              .tr(args: ['30']),
          'price': '€17,5 - €25',
          'isSelected': false,
        },
      ],
    },
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
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(250, 250, 250, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            LocaleKeys
                                .paid_connected_user_saloon_config_price_screen_configuration_text
                                .tr(),
                            style: GoogleFonts.inter(
                              color: const Color.fromRGBO(55, 65, 81, 1),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        ...List.generate(blockItems.length, (elementIndex) {
                          final block = blockItems[elementIndex];
                          final elements =
                              blockItems[elementIndex]['elements']!;
                          return BlockItemWidget(
                            title: block['title']!,
                            elements: [
                              ...List.generate(elements.length, (elementIndex) {
                                final element = elements[elementIndex];
                                return Item(
                                  title: element['title']!,
                                  price: element['price']!,
                                  isSelected: element['isSelected']!,
                                );
                              }),
                            ],
                          );
                        }),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 80,
                      ),
                      child: ElevatedButton(
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
                            horizontal: 25,
                            vertical: 5,
                          ),
                        ),
                        child: Text(
                          LocaleKeys
                              .paid_connected_user_saloon_config_price_screen_save
                              .tr(),
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor:
                              const Color.fromRGBO(249, 191, 13, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 5,
                          ),
                        ),
                        child: Text(
                          LocaleKeys
                              .paid_connected_user_saloon_config_price_screen_configuration_button
                              .tr(),
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
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
