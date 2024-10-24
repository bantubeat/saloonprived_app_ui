import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const FirstBarHHeader(
            selectedIndex: 2,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  LocaleKeys.promote_user_dashboard_screen_buy_beatzcoin.tr(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              LocaleKeys.promote_user_dashboard_screen_beatzcoin.tr(),
              style: GoogleFonts.inter(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(252, 204, 55, 0.3),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocaleKeys.promote_user_dashboard_screen_beatzcoin_description
                      .tr(),
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(165, 165, 165, 1),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: LocaleKeys.promote_user_dashboard_screen_see_terms
                            .tr(),
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(165, 165, 165, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextSpan(
                        text:
                            ' ${LocaleKeys.promote_user_dashboard_screen_terms_and_conditions.tr()}',
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(235, 195, 81, 1),
                          fontSize: 12,
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
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(252, 204, 55, 1),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              children: [
                Text(
                  LocaleKeys.promote_user_dashboard_screen_account_balance.tr(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  '25498 BZC',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FirstBarHHeader extends StatelessWidget {
  const FirstBarHHeader({
    required this.selectedIndex,
    super.key,
  });
  final int selectedIndex;

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
              LocaleKeys.promote_user_dashboard_screen_revenue.tr(),
              style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: selectedIndex == 0
                    ? const Color.fromRGBO(249, 191, 13, 1)
                    : Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              LocaleKeys.promote_user_dashboard_screen_access_price.tr(),
              style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: selectedIndex == 1
                    ? const Color.fromRGBO(249, 191, 13, 1)
                    : Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              LocaleKeys.promote_user_dashboard_screen_buy_tokens.tr(),
              style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: selectedIndex == 2
                    ? const Color.fromRGBO(249, 191, 13, 1)
                    : Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              LocaleKeys.promote_user_dashboard_screen_promote.tr(),
              style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: selectedIndex == 3
                    ? const Color.fromRGBO(249, 191, 13, 1)
                    : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
