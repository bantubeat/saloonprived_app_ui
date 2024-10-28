import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

import 'widgets/messages_item.dart';

class MessagesAndConversationsListScreen extends StatelessWidget {
  const MessagesAndConversationsListScreen({super.key});

  static final List<Map<String, dynamic>> discussions = [
    {
      'name': 'Darlene Black',
      'messagePreview': 'Salut, comment ça va ?',
      'isOnline': true,
      'isSelect': false,
      'isSent': false,
      'isRead': false,
      'avatar': AppAssets.imagesProfil1,
    },
    {
      'name': 'Theresa Steward',
      'messagePreview': 'Ça fait longtemps !',
      'isOnline': true,
      'isSelect': false,
      'isSent': true,
      'isRead': false,
      'avatar': AppAssets.imagesProfil2,
    },
    {
      'name': 'Brandon Wilson',
      'messagePreview': 'Ça fait longtemps !',
      'isOnline': true,
      'isSelect': false,
      'isSent': false,
      'isRead': true,
      'avatar': AppAssets.imagesProfil3,
    },
    {
      'name': 'Kyle Fisher',
      'messagePreview': 'Ça fait longtemps !',
      'isOnline': false,
      'isSelect': true,
      'isSent': false,
      'isRead': false,
      'avatar': AppAssets.imagesProfil4,
    },
    {
      'name': 'Audrey Alexander',
      'messagePreview': 'Ça fait longtemps !',
      'isOnline': true,
      'isSelect': false,
      'isSent': false,
      'isRead': false,
      'avatar': AppAssets.imagesProfil5,
    },
    // Ajoutez plus de discussions ici
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.close),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Wrap(
              alignment: WrapAlignment.spaceAround,
              children: [
                Text(
                  LocaleKeys.messages_and_conversations_list_screen_messages
                      .tr()
                      .toUpperCase(),
                  style: GoogleFonts.inter(
                    color: const Color.fromRGBO(249, 191, 13, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  LocaleKeys.messages_and_conversations_list_screen_channel
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
                ),
              ],
            ),
          ),
          const Divider(
            color: Color.fromRGBO(217, 217, 217, 1),
            height: 1,
          ),
          const SizedBox(
            height: 9,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                height: 1,
                color: Color.fromRGBO(217, 217, 217, 1),
              ),
              itemCount: discussions.length,
              itemBuilder: (context, index) {
                final discussion = discussions[index];
                return MessagesItem(discussion: discussion);
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
