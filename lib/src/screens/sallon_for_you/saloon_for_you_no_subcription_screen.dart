import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_app_bar.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class SaloonForYouNoSubcriptionScreen extends StatelessWidget {
  const SaloonForYouNoSubcriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.forYouSingleLine(),
      body: Container(
        margin: const EdgeInsets.only(bottom: 80.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Image.asset(
                AppAssets.imagesLogo1,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: RichText(
                text: TextSpan(
                  text: LocaleKeys
                      .saloon_for_you_no_subcription_screen_subscription_prompt
                      .tr(),
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: LocaleKeys
                          .saloon_for_you_no_subcription_screen_saloon_for_you
                          .tr(),
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: LocaleKeys
                          .saloon_for_you_no_subcription_screen_dicover_saloon
                          .tr(),
                    ),
                    TextSpan(
                      text:
                          ' ${LocaleKeys.saloon_for_you_no_subcription_screen_dicover_saloon.tr()} ',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: LocaleKeys
                          .saloon_for_you_no_subcription_screen_discover_creators
                          .tr(),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Action pour ajouter
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.orange, // Couleur orange pour le bouton "Ajouter"
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 15,
                ),
              ),
              child: Text(
                LocaleKeys.saloon_for_you_no_subcription_screen_dicover_saloon
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
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
