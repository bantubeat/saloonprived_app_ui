import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';

class SettingsRestrictionScreen extends StatelessWidget {
  const SettingsRestrictionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 20.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Center(
                    child: Text(
                      LocaleKeys
                          .settings_restriction_screen_content_restriction_title
                          .tr(),
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 30,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 15.0,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(249, 250, 251, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              LocaleKeys
                                  .settings_restriction_screen_content_restriction_intro
                                  .tr(),
                              style: GoogleFonts.inter(
                                color: const Color.fromRGBO(0, 0, 0, 0.8),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Text(
                              LocaleKeys
                                  .settings_restriction_screen_adult_content_info
                                  .tr(),
                              style: GoogleFonts.inter(
                                color: const Color.fromRGBO(0, 0, 0, 0.8),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    LocaleKeys
                                        .settings_restriction_screen_disable_adult_category
                                        .tr(),
                                    style: GoogleFonts.inter(
                                      color: const Color.fromRGBO(0, 0, 0, 0.8),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Transform.scale(
                                    scale: .4,
                                    child:
                                        Switch(value: true, onChanged: (e) {}),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Text(
                              LocaleKeys
                                  .settings_restriction_screen_forYou_feed_restriction
                                  .tr(),
                              style: GoogleFonts.inter(
                                color: const Color.fromRGBO(0, 0, 0, 0.8),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Text(
                              LocaleKeys
                                  .settings_restriction_screen_modify_preferences
                                  .tr(),
                              style: GoogleFonts.inter(
                                color: const Color.fromRGBO(0, 0, 0, 0.8),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Wrap(
                          alignment: WrapAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors
                                    .black, // Couleur noire pour le bouton "Annuler"
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 35,
                                  vertical: 15,
                                ),
                              ),
                              child: Text(
                                LocaleKeys
                                    .settings_restriction_screen_previous_button
                                    .tr(),
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Action pour ajouter
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(249, 191, 13, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 35,
                                  vertical: 15,
                                ),
                              ),
                              child: Text(
                                LocaleKeys
                                    .settings_restriction_screen_next_button
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
