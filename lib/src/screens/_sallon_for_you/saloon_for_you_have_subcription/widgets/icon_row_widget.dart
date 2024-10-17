import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class IconRowWidget extends StatelessWidget {
  final int likes;
  final int comments;
  final int reposts;
  final int shares;
  final bool isOldPost;
  final bool isRepost;
  // 0=like, 1=comments , 2=reposts, 3=share , 4 = pourboire
  final Function(int item) onPressIcon;
  const IconRowWidget({
    required this.likes,
    required this.comments,
    required this.reposts,
    required this.shares,
    required this.isOldPost,
    required this.isRepost,
    required this.onPressIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildIconWithValue(
          const Icon(
            Icons.thumb_up_alt_outlined,
            size: 13,
            color: Color.fromRGBO(138, 150, 163, 1),
          ),
          likes,
          isOldPost,
          false,
          onPressIcon,
          0,
        ),
        _buildIconWithValue(
          const Icon(
            Icons.comment_outlined,
            size: 13,
            color: Color.fromRGBO(138, 150, 163, 1),
          ),
          comments,
          isOldPost,
          false,
          onPressIcon,
          1,
        ),
        _buildIconWithValue(
          const Icon(
            Icons.repeat,
            size: 13,
            color: Color.fromRGBO(138, 150, 163, 1),
          ),
          reposts,
          isOldPost,
          isRepost,
          onPressIcon,
          2,
        ),
        _buildIconWithValueExpand(
          _buildRightArrowIcon(),
          shares,
          isOldPost,
          onPressIcon,
          3,
        ),
        _buildIconWithValue(
          Image.asset(
            AppAssets.imagesPourb,
            width: 18,
            height: 18,
          ),
          LocaleKeys.saloon_for_you_have_subcription_screen_tip_label
              .tr()
              .toUpperCase(),
          isOldPost,
          false,
          onPressIcon,
          4,
        ),
      ],
    );
  }

  Widget _buildRightArrowIcon() {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(
        3.14,
      ), // Inverser l'icône pour avoir la flèche à droite
      child: const Icon(
        Icons.reply,
        size: 13,
        color: Color.fromRGBO(138, 150, 163, 1),
      ),
    );
  }

  Widget _buildIconWithValue(
    Widget icon,
    dynamic value,
    bool isOldPost,
    bool canRepost,
    Function(int item) onPress,
    int index,
  ) {
    return InkWell(
      onTap: () => onPress(index),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: (isOldPost) ? 8 : 15,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(244, 244, 244, 1)),
        ),
        child: Row(
          children: [
            icon,
            SizedBox(width: (isOldPost) ? 3 : 5),
            Text(
              value.toString(),
              style: GoogleFonts.inter(
                color: (isOldPost || canRepost)
                    ? const Color.fromRGBO(138, 150, 163, 1)
                    : Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconWithValueExpand(
    Widget icon,
    dynamic value,
    bool isOldPost,
    Function(int item) onPress,
    int index,
  ) {
    return Expanded(
      child: InkWell(
        onTap: () => onPress(index),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromRGBO(244, 244, 244, 1)),
          ),
          child: Row(
            children: [
              icon,
              const SizedBox(width: 5),
              Text(
                value.toString(),
                style: GoogleFonts.inter(
                  color: (isOldPost)
                      ? const Color.fromRGBO(138, 150, 163, 1)
                      : Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
