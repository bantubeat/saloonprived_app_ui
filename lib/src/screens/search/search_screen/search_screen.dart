import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_app_bar.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

import 'widgets/search_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  static List<Map<String, dynamic>> myData = [
    {
      'isSubcribe': true,
      'subcribe': '110k',
      'username': 'Créole',
      'userImageUrl': AppAssets.imagesProfil1,
    },
    {
      'isSubcribe': false,
      'subcribe': '200',
      'username': 'Créole',
      'userImageUrl': AppAssets.imagesProfil2,
    },
    {
      'isSubcribe': true,
      'subcribe': '90k',
      'username': 'Créole',
      'userImageUrl': AppAssets.imagesProfil3,
    },
    {
      'isSubcribe': false,
      'subcribe': '20k',
      'username': 'Pièrre',
      'userImageUrl': AppAssets.imagesProfil4,
    },
    {
      'isSubcribe': false,
      'subcribe': '100k',
      'username': 'Pièrre',
      'userImageUrl': AppAssets.imagesProfil5,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.toDiscoverSingleLine(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 50,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                  color: const Color.fromRGBO(249, 191, 13, 1),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  TextField(
                    textAlign: TextAlign.center,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.inter(
                        color: const Color.fromRGBO(186, 185, 185, 1),
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                      ),
                      hintText: LocaleKeys.search_screen_find_creator.tr(),
                      border: InputBorder.none,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.search,
                      color: Color.fromRGBO(186, 185, 185, 1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: myData.length,
                itemBuilder: (context, index) {
                  var data = myData[index];
                  return SearchCard(
                    username: data['username'],
                    userImageUrl: data['userImageUrl'],
                    isSubcribe: data['isSubcribe'],
                    subcribe: data['subcribe'],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
