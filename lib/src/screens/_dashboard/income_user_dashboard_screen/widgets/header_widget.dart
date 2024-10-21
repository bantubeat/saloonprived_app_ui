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
              Text(
                LocaleKeys
                    .income_user_dashboard_screen_revenue_analysis_salonprived
                    .tr(),
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  LocaleKeys.income_user_dashboard_screen_global_revenue
                      .tr()
                      .toUpperCase(),
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: const Color.fromRGBO(244, 244, 244, 1),
                child: Wrap(
                  alignment: WrapAlignment.spaceAround,
                  children: [
                    HeaderBlock(
                      text: LocaleKeys
                          .income_user_dashboard_screen_total_balance_bzc
                          .tr(),
                      value: '5 896',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    HeaderBlock(
                      text: LocaleKeys
                          .income_user_dashboard_screen_balance_value_bzc_eur
                          .tr(),
                      value: '€100,098',
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
                  alignment: WrapAlignment.spaceAround,
                  children: [
                    HeaderBlock(
                      text: LocaleKeys
                          .income_user_dashboard_screen_financial_account_bantubeat
                          .tr(),
                      value: '€89,88',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    HeaderBlock(
                      text: LocaleKeys
                          .income_user_dashboard_screen_withdraw_your_bzc
                          .tr(),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF000000), // #000000 (black)
                          Color(0xFFF9BF0D), // #F9BF0D (yellow)
                        ],
                        stops: [-0.062, 1.0193],
                      ),
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
              LocaleKeys.income_user_dashboard_screen_revenue.tr(),
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
              LocaleKeys.income_user_dashboard_screen_access_price.tr(),
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
              LocaleKeys.income_user_dashboard_screen_buy_tokens.tr(),
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
              LocaleKeys.income_user_dashboard_screen_promote.tr(),
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

class BottomItem extends StatelessWidget {
  const BottomItem({
    required this.color,
    required this.label,
    required this.value,
    super.key,
  });
  final Color color;
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 10,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(236, 255, 242, 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
          Text(
            value,
            style: GoogleFonts.inter(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
