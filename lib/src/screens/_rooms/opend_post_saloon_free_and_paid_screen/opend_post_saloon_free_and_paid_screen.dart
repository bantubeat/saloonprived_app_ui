import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/src/components/my_app_bar.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

import 'widgets/comment_modal.dart';
import 'widgets/publication_card_widget.dart';

class OpendPostSaloonFreeAndPaidScreen extends StatelessWidget {
  const OpendPostSaloonFreeAndPaidScreen({super.key});
  // 0=like, 1=comments , 2=reposts, 3=share , 4 = pourboire
  void onPressIcon(int index, BuildContext context) {
    if (index == 1) {
      CommentModal.show(context, comments: comments);
    }
  }

  static final List<Map<String, dynamic>> comments = [
    {
      'username': 'JohnDoe',
      'comment': 'This is an awesome post!',
      'time': '2h ago',
      'userImageUrl': AppAssets.imagesProfil1,
      'isCurrentUser': true,
      'isFavorite': false,
    },
    {
      'username': 'JaneSmith',
      'comment': 'I totally agree with you!',
      'time': '3h ago',
      'userImageUrl': AppAssets.imagesProfil3,
      'isCurrentUser': false,
      'isFavorite': true,
    },
    {
      'username': 'Alex92',
      'comment': 'Thanks for sharing this information!',
      'time': '5h ago',
      'userImageUrl': AppAssets.imagesProfil3,
      'isCurrentUser': false,
      'isFavorite': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.toDiscoverSingleLine(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1), // White background
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25), // Shadow color
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back, // Back arrow icon
                      color: Colors.black,
                    ),
                    const SizedBox(width: 8), // Space between icon and text
                    Text(
                      'Publication',
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              // const HeaderWidget(),
              PublicationCardWidget(
                isImage: true,
                isRepost: false,
                userImage: AppAssets.imagesProfil1,
                onPressIcon: onPressIcon,
                images: const [
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
                onPressIcon: onPressIcon,
                images: const [AppAssets.imagesProfil1],
                name: 'Lucia',
                userName: '@Lucia',
                date: "il y'a 1 heure",
              ),

              PublicationCardWidget(
                isImage: true,
                isRepost: false,
                userImage: AppAssets.imagesProfil3,
                onPressIcon: onPressIcon,
                images: const [AppAssets.imagesCentent3],
                name: 'Lucia',
                userName: '@Lucia',
                date: "il y'a 1 heure",
              ),
              PublicationCardWidget(
                isImage: true,
                isRepost: false,
                isLocked: true,
                userImage: AppAssets.imagesProfil3,
                onPressIcon: onPressIcon,
                images: const [AppAssets.imagesCentent3],
                name: 'Lucia',
                userName: '@Lucia',
                date: "il y'a 1 heure",
              ),
              PublicationCardWidget(
                isImage: true,
                isRepost: false,
                userImage: AppAssets.imagesProfil3,
                onPressIcon: onPressIcon,
                images: const [AppAssets.imagesCentent3],
                name: 'Lucia',
                userName: '@Lucia',
                date: "il y'a 1 heure",
              ),
              PublicationCardWidget(
                isImage: true,
                isRepost: true,
                userImage: AppAssets.imagesProfil1,
                onPressIcon: onPressIcon,
                images: const [
                  AppAssets.imagesCentent1,
                  AppAssets.imagesCentent2,
                ],
                name: 'Lucia',
                userName: '@Lucia',
                date: "il y'a 1 heure",
              ),
              // Expanded(
              //   child: Container(),
              // ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
