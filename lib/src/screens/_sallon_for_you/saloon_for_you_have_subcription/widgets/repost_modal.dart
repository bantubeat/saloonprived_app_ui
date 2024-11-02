import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';
import 'package:saloonprived_app/src/screens/discover_lounge/discover_lounge_non_adults_creators_screen/widgets/share_bottom_sheet_content.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../saloon_for_you_have_subcription_screen.dart';
import 'publication_card_widget.dart';

class RepostModal extends StatefulWidget {
  final PostModel post;

  const RepostModal({required this.post, super.key});

  static void show(BuildContext context, {required PostModel post}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: const Color.fromRGBO(238, 239, 241, 1),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          insetPadding: const EdgeInsets.symmetric(horizontal: 0.001),
          child: RepostModal(post: post),
        );
      },
    );
  }

  @override
  State<RepostModal> createState() => _RepostModalState();
}

class _RepostModalState extends State<RepostModal> {
  bool showMoreOptions = false;
  List<LineItem> mediaItems = [
    LineItem(
      name: 'Facebook',
      icon: FontAwesome.facebook,
      backgroundColor: const Color.fromRGBO(18, 35, 188, 1),
      color: Colors.white,
    ),
    LineItem(
      name: 'WhatsApp',
      icon: FontAwesome.whatsapp,
      backgroundColor: const Color.fromRGBO(101, 208, 114, 1),
      color: Colors.white,
    ),
    LineItem(
      name: 'X ',
      icon: Octicons.x, // Remplacement temporaire pour X
      backgroundColor: Colors.black,
      color: Colors.white,
      image: Image.asset(AppAssets.imagesXLogo, width: 22, height: 22),
    ),
    LineItem(
      name: 'Snapchat',
      icon: FontAwesome.snapchat,
      backgroundColor: const Color.fromRGBO(255, 252, 0, 1),
      color: Colors.black,
    ),
    LineItem(
      name: 'Telegram',
      icon: FontAwesome.send,
      rotate: -0.15,
      backgroundColor: Colors.blue,
      color: Colors.white,
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFF2AABEE), // #2AABEE
          Color(0xFF229ED9), // #229ED9
        ],
        stops: [0.0, 0.9926], // Correspond à 0% et 99.26%
      ),
    ),
    LineItem(
      name: LocaleKeys.share_bottom_sheet_content_download.tr(),
      icon: FontAwesome.download,
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
      color: const Color.fromRGBO(38, 37, 37, 1),
    ),
    LineItem(
      name: LocaleKeys.share_bottom_sheet_content_copy_link_text.tr(),
      icon: FontAwesome.copy,
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
      color: const Color.fromRGBO(38, 37, 37, 1),
    ),
  ];
  Widget _buildIconText(
    IconData icon,
    String name,
    Color color,
    Color background,
    Gradient? gradient,
    double? rotate,
    Image? image,
  ) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: gradient != null ? null : background,
              gradient: gradient,
            ),
            child: image ??
                Transform.rotate(
                  angle: rotate ?? 0,
                  child: Icon(icon, size: 22, color: color),
                ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: GoogleFonts.inter(
            color: Colors.black,
            fontSize: 7,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget buildGridViewWithIcons(
    BuildContext context,
    int crossAxisCount,
  ) {
    final data = mediaItems;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: data
              .sublist(0, 5)
              .map(
                (item) => _buildIconText(
                  item.icon,
                  item.name,
                  item.color,
                  item.backgroundColor,
                  item.gradient,
                  item.rotate,
                  item.image,
                ),
              )
              .toList(),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: data
              .sublist(5, 7)
              .map(
                (item) => _buildIconText(
                  item.icon,
                  item.name,
                  item.color,
                  item.backgroundColor,
                  item.gradient,
                  item.rotate,
                  item.image,
                ),
              )
              .toList(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(238, 239, 241, 1),
      height: MediaQuery.of(context).size.height * 0.75,
      child: Column(
        children: <Widget>[
          _buildHeader(context),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  Header(
                    image: widget.post.userImage,
                    name: 'Lucia',
                    userName: '@Lucia',
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20,
                    ),
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      maxLines: 4,
                      minLines: 2,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText:
                            LocaleKeys.repost_modal_message_placeholder.tr(),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 5),
                        hintStyle: const TextStyle(
                          color: Color.fromRGBO(138, 150, 163, 1),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(217, 217, 217, 1),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(217, 217, 217, 1),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: PublicationCardWidget(
                          isImage: widget.post.isImage,
                          isRepost: widget.post.isRepost,
                          userImage: widget.post.userImage,
                          onPressIcon: (_, context) {},
                          images: widget.post.images,
                          name: 'Lucia',
                          userName: '@Lucia',
                          date: "il y'a 1 heure",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: () {
                      setState(() {
                        showMoreOptions = !showMoreOptions;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.share),
                        const SizedBox(width: 10),
                        Text(
                          LocaleKeys.repost_modal_more_option.tr(),
                          style: GoogleFonts.inter(
                            color: const Color.fromRGBO(50, 50, 50, 1),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (showMoreOptions)
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(217, 217, 217, 1),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              LocaleKeys.repost_modal_share_out.tr(),
                              style: GoogleFonts.inter(
                                color: const Color.fromRGBO(50, 50, 50, 1),
                                fontSize: 6,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Divider(
                            color: Color.fromRGBO(235, 235, 235, 1),
                            height: 1,
                          ),
                          buildGridViewWithIcons(context, 5),
                        ],
                      ),
                    ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      height: 45,
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LocaleKeys.repost_modal_share.tr(),
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: const Icon(
                  Icons.close,
                  size: 13,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    required this.image,
    required this.name,
    required this.userName,
    super.key,
  });
  final String image;
  final String name;
  final String userName;
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
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(249, 191, 13, 1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              LocaleKeys.repost_modal_share.tr(),
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
