import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'widgets/block_items.dart';

class MessagesSettingsScreen extends StatelessWidget {
  const MessagesSettingsScreen({super.key});

  static final List<Map<String, dynamic>> discussions = [
    {
      'title': LocaleKeys.messages_settings_screen_welcome_message
          .tr()
          .toUpperCase(),
      'isSelect': true,
      'icon': Icons.mail,
    },
    {
      'title': LocaleKeys.messages_settings_screen_diffusion.tr().toUpperCase(),
      'isSelect': false,
      'icon': FontAwesome5Solid.layer_group,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.close),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Wrap(
              alignment: WrapAlignment.spaceAround,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  LocaleKeys.messages_settings_screen_messages
                      .tr()
                      .toUpperCase(),
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  LocaleKeys.messages_settings_screen_channel
                      .tr()
                      .toUpperCase(),
                  style: GoogleFonts.inter(
                    color: const Color.fromRGBO(24, 24, 24, 0.2),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Icon(
                  Icons.settings,
                  color: Color.fromRGBO(249, 191, 13, 1),
                ),
              ],
            ),
          ),
          const Divider(
            color: Color.fromRGBO(217, 217, 217, 1),
            height: 1,
          ),
          const SizedBox(
            height: 29,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: discussions.length,
              itemBuilder: (context, index) {
                final discussion = discussions[index];
                return BlockItem(data: discussion);
              },
            ),
          ),
          const Divider(
            color: Color.fromRGBO(217, 217, 217, 1),
            height: 1,
          ),
        ],
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
