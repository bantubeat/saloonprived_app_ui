import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

import 'header_widget.dart';
import 'suggestions_item.dart';

class SuggestionsCardWidget extends StatelessWidget {
  const SuggestionsCardWidget({
    required this.userImage,
    required this.name,
    required this.userName,
    required this.backgourdImages,
    super.key,
  });
  final String userImage;
  final String name;
  final String userName;
  final String backgourdImages;
  static final PageController _pageController = PageController();
  void onPressIcon(int item) {
    if (item == 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn, // Exemple de courbe
      );
    } else {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500), // ou autre durée
        curve: Curves.easeInOut, // Exemple de courbe
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 450,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        color: Colors.white,
        child: PageView.builder(
          controller: _pageController,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Header(
                  onPressIcon: onPressIcon,
                ),
                SuggestionsItem(
                  backgourdImages: AppAssets.imagesLatina,
                  userImage: AppAssets.imagesProfil4,
                  name: name,
                  userName: userName,
                ),
                const SuggestionsItem(
                  backgourdImages: AppAssets.imagesAsiatInfir,
                  userImage: AppAssets.imagesProfil5,
                  name: 'milly_Billion',
                  userName: '@milly_billion',
                ),
                const SizedBox(
                  height: 10,
                ),
                PointIndicator(
                  totalItems: 5,
                  selectedIndex: index,
                  size: 13,
                ),
                const SizedBox(
                  height: 3,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    required this.onPressIcon,
    super.key,
  });
  // 0 pour left et 1 pour right
  final void Function(int item) onPressIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            LocaleKeys.saloon_for_you_have_subcription_screen_suggestions_label
                .tr(),
            style: GoogleFonts.inter(
              color: const Color.fromRGBO(143, 139, 139, 1),
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () => onPressIcon(0),
                child: const Icon(
                  Icons.chevron_left,
                  color: Color.fromRGBO(143, 139, 139, 1),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () => onPressIcon(1),
                child: const Icon(
                  Icons.chevron_right,
                  color: Color.fromRGBO(143, 139, 139, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
