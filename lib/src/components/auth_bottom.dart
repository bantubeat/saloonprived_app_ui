import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class AuthBottom extends StatelessWidget {
  const AuthBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  LocaleKeys.login_screen_first_line_text.tr(),
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  LocaleKeys.login_screen_second_line_text.tr(),
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              Image.asset(
                AppAssets.imagesPaymentMethod,
                fit: BoxFit.contain,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: AppColors.myGray,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.login_screen_account_text.tr(),
                      textAlign: TextAlign.start,
                      style: GoogleFonts.archivo(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      width: 3,
                      height: 18,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: AppColors.myGray600,
                      ),
                    ),
                    Text(
                      LocaleKeys.login_screen_channel_text.tr(),
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Image.asset(
            AppAssets.imagesAuthSaloonForYou1,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Image.asset(
          AppAssets.imagesBwyw,
          fit: BoxFit.contain,
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 1250,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Image.asset(
                    AppAssets.imagesAuthSaloonForYou,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Image.asset(
                    AppAssets.imagesAuthSaloonDiscover,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: const EdgeInsets.all(25),
          decoration: const BoxDecoration(
            color: AppColors.myDark,
          ),
          child: Column(
            children: [
              Image.asset(
                AppAssets.imagesCoverLogo,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                LocaleKeys.login_screen_support_creators_text.tr(),
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Image.asset(
                AppAssets.imagesStandUP,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 40,
          ),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            LocaleKeys.login_screen_partners_program_text.tr(),
            textAlign: TextAlign.center,
            style: GoogleFonts.archivoBlack(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 5,
          ),
          decoration: const BoxDecoration(
            color: AppColors.primary,
          ),
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primary,
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                    ),
                    child: Text(
                      'C',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.archivo(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    LocaleKeys.login_screen_terms_conditions_text.tr(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.archivo(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Text(
                LocaleKeys.login_screen_cookies_text.tr(),
                textAlign: TextAlign.center,
                style: GoogleFonts.archivo(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              Text(
                LocaleKeys.login_screen_privacy_text.tr(),
                textAlign: TextAlign.center,
                style: GoogleFonts.archivo(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              Text(
                LocaleKeys.login_screen_terms_conditions_text.tr(),
                textAlign: TextAlign.center,
                style: GoogleFonts.archivo(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
