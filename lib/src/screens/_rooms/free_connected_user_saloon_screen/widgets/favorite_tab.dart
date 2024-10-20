import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

import 'favorite_card.dart';

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({super.key});
  static List<Map<String, dynamic>> myData = [
    {
      'subcribe': '110k',
      'username': '@Créole',
      'userImageUrl': AppAssets.imagesProfil1,
    },
    {
      'subcribe': '200',
      'username': '@Créole',
      'userImageUrl': AppAssets.imagesProfil2,
    },
    {
      'subcribe': '90k',
      'username': '@Créole',
      'userImageUrl': AppAssets.imagesProfil3,
    },
    {
      'subcribe': '20k',
      'username': '@Pièrre',
      'userImageUrl': AppAssets.imagesProfil4,
    },
    {
      'subcribe': '100k',
      'username': '@Pièrre',
      'userImageUrl': AppAssets.imagesProfil5,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              LocaleKeys.free_connected_user_saloon_screen_your_favoris.tr(),
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 8,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 0.7,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: myData.length,
              itemBuilder: (context, index) {
                var data = myData[index];
                return FavoriteCard(
                  username: data['username'],
                  userImageUrl: data['userImageUrl'],
                  subcribe: data['subcribe'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
