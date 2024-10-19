import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.more_vert_rounded,
              color: AppColors.myDark,
              size: 15,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 5,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color.fromRGBO(249, 191, 13, 1),
              width: 2,
            ),
          ),
          child: ClipOval(
            child: Image.asset(
              AppAssets.imagesProfil2,
              fit: BoxFit.cover,
              width: 80,
              height: 80,
              errorBuilder: (c, e, s) => const SizedBox(),
            ),
          ),
        ),
        Text(
          'Afrika Kemie',
          style: GoogleFonts.inter(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
        Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '10k',
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: LocaleKeys
                        .profile_create_user_profile_screen_subscriptions_count
                        .tr(),
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '10k',
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: LocaleKeys
                        .paid_connected_user_saloon_config_price_screen_followers
                        .tr(),
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 3,
        ),
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
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: const Color(
              0xFFFCCC37,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 5,
            ),
          ),
          child: Text(
            LocaleKeys
                .paid_connected_user_saloon_config_price_screen_edit_profile
                .tr(),
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
