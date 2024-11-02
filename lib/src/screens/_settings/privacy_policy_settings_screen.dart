import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';

class PrivacyPolicySettingsScreen extends StatelessWidget {
  const PrivacyPolicySettingsScreen({super.key});
  static ScrollController controler =
      ScrollController(initialScrollOffset: 1.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          LocaleKeys.privacy_policy_settings_screen_content_title.tr(),
          style: GoogleFonts.inter(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          size: 16,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Divider(
            color: Color.fromRGBO(217, 217, 217, 1),
            height: 1,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ScrollbarTheme(
                data: ScrollbarThemeData(
                  thumbColor: WidgetStateProperty.all(
                    const Color.fromRGBO(249, 191, 13, 0.46),
                  ),
                  trackColor: WidgetStateProperty.all(
                    const Color.fromRGBO(249, 191, 13, 0.15),
                  ),
                  thickness: WidgetStateProperty.all(8),
                  radius: const Radius.circular(
                    5,
                  ),
                  mainAxisMargin: 19,
                ),
                child: Scrollbar(
                  thumbVisibility: true,
                  trackVisibility: true,
                  interactive: true,
                  controller: controler,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    controller: controler,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LocaleKeys.privacy_policy_settings_screen_last_update
                              .tr(args: ['01/01/2023']),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        // Text(
                        //   LocaleKeys
                        //       .privacy_policy_settings_screen_content_title
                        //       .tr(),
                        //   style: const TextStyle(
                        //     fontSize: 14,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        Text(
                          LocaleKeys.privacy_policy_settings_screen_welcome
                              .tr(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_sub_title
                              .tr(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_preamble
                              .tr(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
//
//
//
//
//
//
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_1_title
                              .tr(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_1_content
                              .tr(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),

                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_2_title
                              .tr(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_2_content
                              .tr(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_3_title
                              .tr(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_3_content
                              .tr(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_4_title
                              .tr(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_4_content
                              .tr(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_5_title
                              .tr(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_5_content
                              .tr(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_6_title
                              .tr(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_6_content
                              .tr(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),

                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_7_title
                              .tr(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_7_content
                              .tr(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_8_title
                              .tr(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_8_content
                              .tr(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_9_title
                              .tr(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_9_content
                              .tr(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_10_title
                              .tr(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          LocaleKeys
                              .privacy_policy_settings_screen_content_paragraph_10_content
                              .tr(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 15,
            ),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(243, 244, 246, 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Action pour ajouter
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(249, 191, 13, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 35,
                      vertical: 17,
                    ),
                  ),
                  child: Text(
                    LocaleKeys.privacy_policy_settings_screen_next.tr(),
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
    );
  }
}
