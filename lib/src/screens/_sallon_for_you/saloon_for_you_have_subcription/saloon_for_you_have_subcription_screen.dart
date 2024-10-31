import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_app_bar.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

import 'widgets/header_widget.dart';
import 'widgets/publication_card_widget.dart';
import 'widgets/repost_modal.dart';
import 'widgets/suggestions_card_widget.dart';

class SaloonForYouHaveSubcriptionScreen extends StatelessWidget {
  const SaloonForYouHaveSubcriptionScreen({super.key});
  // 0=like, 1=comments , 2=reposts, 3=share , 4 = pourboire
  void onPressIcon(int index, BuildContext context) {
    if (index == 1) {
      showCommentForPost(
        context,
        comments: comments,
      );
    }
    if (index == 2) {
      RepostModal.show(context, post: post);
    }
  }

  static final post = PostModel(
    isImage: true,
    isRepost: false,
    userImage: AppAssets.imagesProfil1,
    onPressIcon: () {},
    images: const [
      AppAssets.imagesCentent2,
      AppAssets.imagesCentent3,
      AppAssets.imagesCentent1,
    ],
    name: 'Richachba',
    userName: '@Richachba',
    date: "il y'a 1 heure",
  );
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
  static void showCommentForPost(
    BuildContext context, {
    required List<dynamic> comments,
  }) async {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0), // Coins arrondis en haut
      ),
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white, // Couleur de fond du container
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: const Offset(
                        0,
                        4,
                      ),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(
                    8.0,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Text(
                        '500 ${LocaleKeys.saloon_for_you_have_subcription_screen_comments_count.tr()}',
                        style: GoogleFonts.inter(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.close,
                          size: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: comments.length,
                  itemBuilder: (context, index) {
                    final comment = comments[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              comment['userImageUrl']!,
                            ), // First letter of username
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      comment['username']!,
                                      style: GoogleFonts.inter(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          comment['isFavorite']! == true
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          size: 16,
                                          color: comment['isFavorite']! == true
                                              ? AppColors.primary
                                              : Colors.black,
                                        ),
                                        const SizedBox(width: 3),
                                        Text(
                                          '20',
                                          style: GoogleFonts.inter(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                comment['isFavorite']! == true
                                                    ? AppColors.primary
                                                    : Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  comment['comment']!,
                                  style: GoogleFonts.inter(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      comment['time']!,
                                      style: GoogleFonts.inter(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.7),
                                      ),
                                    ),
                                    if (comment['isCurrentUser']!)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 150.0),
                                        child: Text(
                                          LocaleKeys
                                              .saloon_for_you_have_subcription_screen_delete
                                              .tr(),
                                          style: GoogleFonts.inter(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(
                                              0,
                                              0,
                                              0,
                                              0.7,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                LocaleKeys
                    .saloon_for_you_have_subcription_screen_swipe_to_load_more
                    .tr(),
                style: GoogleFonts.inter(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(249, 191, 13, 1),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10,
                ),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(244, 244, 244, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      20,
                    ),
                    topRight: Radius.circular(
                      20,
                    ),
                  ), // Coins arrondis en haut
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        AppAssets.imagesProfil1,
                      ), // First letter of username
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 35,
                        child: TextField(
                          onChanged: (value) {},
                          textAlignVertical: TextAlignVertical.top,
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: GoogleFonts.inter(
                              color: const Color.fromRGBO(0, 0, 0, 0.7),
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                            ),
                            hintText: LocaleKeys
                                .saloon_for_you_have_subcription_screen_write_omment
                                .tr(),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(209, 213, 219, 1),
                              ),
                            ),
                            suffixIcon: Transform.rotate(
                              angle: -0.5,
                              child: const Icon(
                                Icons.send,
                                size: 15,
                                color: Color.fromRGBO(249, 191, 13, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.forYouWithBellIcon(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const HeaderWidget(),
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
              const SizedBox(
                height: 10,
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
              const SizedBox(
                height: 10,
              ),

              const SuggestionsCardWidget(
                userImage: AppAssets.imagesProfil2,
                backgourdImages: AppAssets.imagesSaloonProfileBack,
                name: 'ZoecrabbTV',
                userName: '@zoecrabbtv',
              ),
              const SizedBox(
                height: 10,
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
              const SizedBox(
                height: 10,
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

class PostModel {
  final bool isImage;
  final bool isRepost;
  final String userImage;
  final Function onPressIcon;
  final List<String> images;
  final String name;
  final String userName;
  final String date;

  PostModel({
    required this.isImage,
    required this.isRepost,
    required this.userImage,
    required this.onPressIcon,
    required this.images,
    required this.name,
    required this.userName,
    required this.date,
  });
}
