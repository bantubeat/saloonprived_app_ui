import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';

import 'header_block.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FirstBarHHeader(),
        Container(
          width: MediaQuery.of(context).size.width,
          color: const Color.fromRGBO(244, 244, 244, 1),
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  LocaleKeys
                      .access_price_user_dashboard_screen_your_curent_acces
                      .tr(),
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: const Color.fromRGBO(244, 244, 244, 1),
                child: Wrap(
                  alignment: WrapAlignment.spaceAround,
                  children: [
                    HeaderBlock(
                      text: LocaleKeys
                          .access_price_user_dashboard_screen_acces_day
                          .tr(args: ['24']),
                      value: '5 896',
                      color: const Color.fromRGBO(231, 237, 255, 1),
                      date: '24H',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    HeaderBlock(
                      text: LocaleKeys
                          .access_price_user_dashboard_screen_acces_day
                          .tr(args: ['7']),
                      value: '€100,098',
                      color: const Color.fromRGBO(255, 245, 217, 1),
                      date: '7J',
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
                child: Wrap(
                  children: [
                    HeaderBlock(
                      text: LocaleKeys
                          .access_price_user_dashboard_screen_acces_day
                          .tr(args: ['30']),
                      value: '€89,88',
                      color: const Color.fromRGBO(220, 250, 248, 1),
                      date: '30J',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 7,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FirstBarHHeader extends StatelessWidget {
  const FirstBarHHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color.fromRGBO(163, 160, 160, 1),
      padding: const EdgeInsets.all(8),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Text(
              LocaleKeys.access_price_user_dashboard_screen_revenue.tr(),
              style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              LocaleKeys.access_price_user_dashboard_screen_access_price.tr(),
              style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(249, 191, 13, 1),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              LocaleKeys.access_price_user_dashboard_screen_buy_tokens.tr(),
              style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              LocaleKeys.access_price_user_dashboard_screen_promote.tr(),
              style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
