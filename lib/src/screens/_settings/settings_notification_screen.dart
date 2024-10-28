import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';

class SettingsNotificationScreen extends StatelessWidget {
  const SettingsNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          LocaleKeys.settings_notification_screen_title.tr(),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color.fromRGBO(209, 213, 219, 1),
                  width: 2,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 15.0,
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        LocaleKeys.settings_notification_screen_preferences
                            .tr(),
                        style: GoogleFonts.archivo(
                          color: const Color.fromRGBO(0, 0, 0, 0.7),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys
                                .settings_notification_screen_receive_notifications
                                .tr(),
                            style: GoogleFonts.archivo(
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  LocaleKeys
                                      .settings_notification_screen_receive_notifications_description
                                      .tr(),
                                  style: GoogleFonts.inter(
                                    color:
                                        const Color.fromRGBO(186, 185, 185, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  LocaleKeys
                                      .settings_notification_screen_disable_notifications_info
                                      .tr(),
                                  style: GoogleFonts.inter(
                                    color:
                                        const Color.fromRGBO(186, 185, 185, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Transform.scale(
                              alignment: Alignment.centerRight,
                              scale: .4,
                              child: Switch(value: true, onChanged: (e) {}),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 9,
                  color: const Color.fromRGBO(217, 217, 217, 1),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 15.0,
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys
                                .settings_notification_screen_receive_email_notifications
                                .tr(),
                            style: GoogleFonts.archivo(
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  ' ${LocaleKeys.settings_notification_screen_receive_email_notifications_description.tr()} \n ${LocaleKeys.settings_notification_screen_disable_email_notifications_info.tr()}',
                                  style: GoogleFonts.inter(
                                    color:
                                        const Color.fromRGBO(186, 185, 185, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                // Text(
                                //  ,
                                //   style: GoogleFonts.inter(
                                //     color:
                                //         const Color.fromRGBO(186, 185, 185, 1),
                                //     fontSize: 12,
                                //     fontWeight: FontWeight.w400,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Transform.scale(
                              alignment: Alignment.centerRight,
                              scale: .4,
                              child: Switch(value: true, onChanged: (e) {}),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 9,
                  color: const Color.fromRGBO(217, 217, 217, 1),
                ),
              ],
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
                    LocaleKeys.settings_notification_screen_continue.tr(),
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
