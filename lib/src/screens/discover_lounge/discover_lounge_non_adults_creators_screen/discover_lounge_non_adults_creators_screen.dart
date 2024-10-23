import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/components/my_app_bar.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

import 'widgets/user_profile.dart';
import 'widgets/action_sidebar.dart';
import 'widgets/video_caption.dart';
import 'widgets/video_widget.dart';

class DiscoverLoungeNonAdultsCreatorsScreen extends StatefulWidget {
  @override
  State<DiscoverLoungeNonAdultsCreatorsScreen> createState() =>
      _DiscoverLoungeNonAdultsCreatorsScreenState();
}

class _DiscoverLoungeNonAdultsCreatorsScreenState
    extends State<DiscoverLoungeNonAdultsCreatorsScreen> {
  static const List<Map<String, dynamic>> data = [
    {
      'user': {
        'username': ' Blue Divine',
        'avatar': AppAssets.imagesSuscribeProfil,
      },
      'url':
          'https://videos.pexels.com/video-files/28302272/12355404_1080_1920_60fps.mp4',
      'description':
          'jpp 🤣🤣😅😅😅🤣🤣😅🤣🤣🥰😅#uae #AFRIQUE #Afrique #europe #italy #belgique🇧🇪 #france #eveilconscience #cotedivoiretiktok🇨🇮 #pourtoi #Cameroun #fo',
      'likeCount': 12000,
      'commentCount': 150,
      'shareCount': 100,
    },
    {
      'user': {
        'username': ' Blue Divine',
        'avatar': AppAssets.imagesSuscribeProfil,
      },
      'url':
          'https://videos.pexels.com/video-files/7699696/7699696-uhd_1440_2732_24fps.mp4',
      'description':
          'jpp 🤣🤣😅😅😅🤣🤣😅🤣🤣🥰😅#uae #AFRIQUE #Afrique #europe #italy #belgique🇧🇪 #france #eveilconscience #cotedivoiretiktok🇨🇮 #pourtoi #Cameroun #fo',
      'likeCount': 15500,
      'commentCount': 170,
      'shareCount': 50,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.toDiscoverWithBellIcon(),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: data.map((item) {
          return Stack(
            children: [
              Positioned.fill(
                child: Videowidget(
                  videoUrl: item['url'],
                ),
              ),
              Positioned(
                bottom: 120.0,
                left: 20.0,
                right: 100.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 8.0,
                      ),
                      child: UserProfile(user: item['user']),
                    ),
                    VideoCaption(
                      videoDescription: item['description'],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 90.0,
                right: 20.0,
                child: ActionSidebar(item: item),
              ),
            ],
          );
        }).toList(),
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
