import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/components/my_app_bar.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

import 'widgets/header_widget.dart';
import 'widgets/publication_card_widget.dart';
import 'widgets/suggestions_card_widget.dart';

class SaloonForYouHaveSubcriptionScreen extends StatelessWidget {
  const SaloonForYouHaveSubcriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.forYouWithBellIcon(),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HeaderWidget(),
            PublicationCardWidget(
              isImage: true,
              isRepost: false,
              userImage: AppAssets.imagesProfil1,
              images: [
                AppAssets.imagesCentent2,
                AppAssets.imagesCentent3,
                AppAssets.imagesCentent1,
              ],
              name: 'Richachba',
              userName: '@Richachba',
              date: "il y'a 1 heure",
            ),
            PublicationCardWidget(
              isImage: true,
              isRepost: false,
              userImage: AppAssets.imagesProfil1,
              images: [AppAssets.imagesProfil1],
              name: 'Lucia',
              userName: '@Lucia',
              date: "il y'a 1 heure",
            ),

            SuggestionsCardWidget(
              userImage: AppAssets.imagesProfil2,
              backgourdImages: AppAssets.imagesSaloonProfileBack,
              name: 'ZoecrabbTV',
              userName: '@zoecrabbtv',
            ),

            PublicationCardWidget(
              isImage: true,
              isRepost: false,
              userImage: AppAssets.imagesProfil3,
              images: [AppAssets.imagesCentent3],
              name: 'Lucia',
              userName: '@Lucia',
              date: "il y'a 1 heure",
            ),
            PublicationCardWidget(
              isImage: true,
              isRepost: true,
              userImage: AppAssets.imagesProfil1,
              images: [AppAssets.imagesCentent1, AppAssets.imagesCentent2],
              name: 'Lucia',
              userName: '@Lucia',
              date: "il y'a 1 heure",
            ),
            // Expanded(
            //   child: Container(),
            // ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
