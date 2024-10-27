import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';

class SettingsUnsubscribeScreen extends StatelessWidget {
  const SettingsUnsubscribeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 15.0,
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  LocaleKeys.settings_unsubscribe_screen_unsubscribe_title.tr(),
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Color.fromRGBO(209, 213, 219, 1),
            height: 2,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 15.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        LocaleKeys
                            .settings_unsubscribe_screen_unsubscribe_confirmation
                            .tr(),
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        LocaleKeys.settings_unsubscribe_screen_unsubscribe_info
                            .tr(),
                        style: GoogleFonts.archivo(
                          color: const Color.fromRGBO(55, 65, 81, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        LocaleKeys
                            .settings_unsubscribe_screen_unsubscribe_process
                            .tr(),
                        style: GoogleFonts.archivo(
                          color: const Color.fromRGBO(55, 65, 81, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      ...[
                        LocaleKeys
                            .settings_unsubscribe_screen_profile_deactivation
                            .tr(),
                        LocaleKeys
                            .settings_unsubscribe_screen_permanent_seletion
                            .tr(),
                        LocaleKeys
                            .settings_unsubscribe_screen_profile_recovery_info
                            .tr(),
                      ].map(
                        (text) => Padding(
                          padding: const EdgeInsets.only(left: 7.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 6),
                                width: 3,
                                height: 3,
                                decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                ),
                                padding: const EdgeInsets.all(3),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  text,
                                  style: GoogleFonts.archivo(
                                    color: const Color.fromRGBO(55, 65, 81, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 40),
                      child: ElevatedButton(
                        onPressed: () {
                          // Action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(249, 191, 13, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 35,
                            vertical: 15,
                          ),
                        ),
                        child: Text(
                          LocaleKeys
                              .settings_unsubscribe_screen_unsubscribe_button
                              .tr(),
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 33,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
