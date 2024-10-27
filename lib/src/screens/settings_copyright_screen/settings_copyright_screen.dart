import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/primary_button.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class SettingsCopyrightScreen extends StatelessWidget {
  const SettingsCopyrightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          LocaleKeys.settings_copyright_screen_appbar_title.tr(),
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            color: AppColors.myGray,
            height: 1.5,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              padding: const EdgeInsets.only(
                  bottom: 80, left: 20, right: 20, top: 10,),
              child: Scrollbar(
                interactive: true,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys.settings_copyright_screen_update.tr(),
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Align(
                        child: Text(
                          LocaleKeys.settings_copyright_screen_title
                              .tr()
                              .toUpperCase(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        LocaleKeys.settings_copyright_screen_welcome.tr(),
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        LocaleKeys.settings_copyright_screen_content_preamble
                            .tr(),
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        LocaleKeys
                            .settings_copyright_screen_content_paragraph_1_title
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
                            .settings_copyright_screen_content_paragraph_1_content
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
                            .settings_copyright_screen_content_paragraph_2_title
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
                            .settings_copyright_screen_content_paragraph_2_content
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
                            .settings_copyright_screen_content_paragraph_3_title
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
                            .settings_copyright_screen_content_paragraph_3_content
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
                            .settings_copyright_screen_content_paragraph_4_title
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
                            .settings_copyright_screen_content_paragraph_4_content
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
                            .settings_copyright_screen_content_paragraph_5_title
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
                            .settings_copyright_screen_content_paragraph_5_content
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
                            .settings_copyright_screen_content_paragraph_6_title
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
                            .settings_copyright_screen_content_paragraph_6_content
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
                            .settings_copyright_screen_content_paragraph_7_title
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
                            .settings_copyright_screen_content_paragraph_7_content
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
                            .settings_copyright_screen_content_paragraph_8_title
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
                            .settings_copyright_screen_content_paragraph_8_content
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
                            .settings_copyright_screen_content_paragraph_9_title
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
                            .settings_copyright_screen_content_paragraph_9_content
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
                            .settings_copyright_screen_content_paragraph_10_title
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
                            .settings_copyright_screen_content_paragraph_10_content
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
                            .settings_copyright_screen_content_paragraph_11_title
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
                            .settings_copyright_screen_content_paragraph_11_content
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
                            .settings_copyright_screen_content_paragraph_12_title
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
                            .settings_copyright_screen_content_paragraph_12_content
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
                            .settings_copyright_screen_content_paragraph_13_title
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
                            .settings_copyright_screen_content_paragraph_13_content
                            .tr(),
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: const BoxDecoration(
                color: AppColors.myGray,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Center(
                child: PrimaryButton(
                  fixedSize: Size(MediaQuery.of(context).size.width / 3, 30),
                  onPressed: (context) {},
                  text: LocaleKeys.settings_copyright_screen_button_label.tr(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
