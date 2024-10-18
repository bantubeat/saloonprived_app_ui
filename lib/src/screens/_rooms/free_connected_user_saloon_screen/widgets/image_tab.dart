import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

import 'image_card.dart';

class ImageTab extends StatelessWidget {
  const ImageTab({super.key});

  static List<Map<String, dynamic>> myData = [
    {
      'isSubcribe': true,
      'subcribe': '110k',
      'username': 'Créole',
      'userImageUrl': [AppAssets.imagesProfil1],
    },
    {
      'isSubcribe': false,
      'subcribe': '200',
      'username': 'Créole',
      'userImageUrl': [AppAssets.imagesProfil2, AppAssets.imagesProfil2],
    },
    {
      'isSubcribe': true,
      'subcribe': '90k',
      'username': 'Créole',
      'userImageUrl': [AppAssets.imagesProfil3],
    },
    {
      'isSubcribe': false,
      'subcribe': '20k',
      'username': 'Pièrre',
      'userImageUrl': [AppAssets.imagesProfil4],
    },
    {
      'isSubcribe': false,
      'subcribe': '100k',
      'username': 'Pièrre',
      'userImageUrl': [AppAssets.imagesProfil5],
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  LocaleKeys.free_connected_user_saloon_screen_message.tr(),
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 8,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color(
                      0xFFFCCC37,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 5,
                    ),
                  ),
                  child: Text(
                    LocaleKeys.free_connected_user_saloon_screen_button_text
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
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.7,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: myData.length,
              itemBuilder: (context, index) {
                var data = myData[index];
                return ImageCard(
                  username: data['username'],
                  userImageUrl: data['userImageUrl'],
                  isSubcribe: data['isSubcribe'],
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
