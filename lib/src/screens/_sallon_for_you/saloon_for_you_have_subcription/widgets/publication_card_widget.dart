import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

import 'icon_row_widget.dart';
import 'image_widget.dart';
import 'video_widget.dart';

class PublicationCardWidget extends StatelessWidget {
  const PublicationCardWidget({
    required this.userImage,
    required this.name,
    required this.userName,
    required this.date,
    required this.isImage,
    required this.images,
    required this.isRepost,
    required this.onPressIcon,
    super.key,
    this.isOldPost,
  });
  final String userImage;
  final String name;
  final String userName;
  final String date;
  final bool isImage;
  final bool isRepost;
  final bool? isOldPost;
  final List<dynamic> images;
  // 0=like, 1=comments , 2=reposts, 3=share , 4 = pourboire
  final Function(int item, BuildContext context) onPressIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Header(
            image: userImage,
            name: 'Lucia',
            userName: '@Lucia',
            date: "il y'a 1 heure",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 15,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'one of the most popular thinking about so raining',
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          if (isRepost)
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(186, 185, 185, 1),
                ),
              ),
              child: PublicationCardWidget(
                isOldPost: true,
                isImage: true,
                isRepost: false,
                userImage: AppAssets.imagesProfil3,
                images: const [AppAssets.imagesCentent1],
                name: 'Lucia',
                userName: '@Lucia',
                date: "il y'a 1 heure",
                onPressIcon: onPressIcon,
              ),
            ),
          if (!isRepost && isImage)
            ImageWidget(
              images: images,
              onClose: () {},
            ),
          if (!isRepost && !isImage)
            VideoWidget(
              onClose: () {},
            ),
          const SizedBox(
            height: 30,
          ),
          IconRowWidget(
            isRepost: isRepost,
            isOldPost: isOldPost != null ? isOldPost! : false,
            likes: 120,
            comments: 45,
            reposts: 12,
            shares: 30,
            onPressIcon: (index) {
              onPressIcon(index, context);
            },
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    required this.image,
    required this.name,
    required this.userName,
    required this.date,
    super.key,
  });
  final String image;
  final String name;
  final String userName;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  image,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    name,
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(50, 50, 50, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    userName,
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(143, 139, 139, 1),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(
                date,
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(143, 139, 139, 1),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.more_horiz,
                color: Color.fromRGBO(0, 0, 0, 0.63),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
