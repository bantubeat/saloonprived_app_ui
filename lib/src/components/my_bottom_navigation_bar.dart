import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class NavIcon {
  final String label;
  final dynamic icon;
  final String type;
  final bool isBlur;

  NavIcon({
    required this.label,
    required this.icon,
    this.type = 'icon',
    this.isBlur = false,
  });
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final List<NavIcon> icons = [
      NavIcon(
        label: LocaleKeys.my_bottom_navigation_bar_home.tr(),
        icon: Icons.home,
      ),
      NavIcon(
        label: LocaleKeys.my_bottom_navigation_bar_messages.tr(),
        icon: Icons.email,
      ),
      NavIcon(label: '', icon: Icons.add, type: 'customer'),
      NavIcon(
        label: LocaleKeys.my_bottom_navigation_bar_bantubeat.tr(),
        icon: AppAssets.imagesLogoBantubeat,
        type: 'image',
      ),
      NavIcon(
        label: LocaleKeys.my_bottom_navigation_bar_profil.tr(),
        icon: Icons.person,
      ),
      NavIcon(
        label: LocaleKeys.my_bottom_navigation_bar_music.tr(),
        icon: AppAssets.imagesMusicNote,
        type: 'image',
        isBlur: true,
      ),
      NavIcon(
        label: LocaleKeys.my_bottom_navigation_bar_beat.tr(),
        icon: AppAssets.imagesBeat,
        type: 'image',
        isBlur: true,
      ),
      NavIcon(
        label: LocaleKeys.my_bottom_navigation_bar_settings.tr(),
        icon: Icons.settings,
      ),
      NavIcon(
        label: LocaleKeys.my_bottom_navigation_bar_feat_link.tr(),
        icon: AppAssets.imagesLogoFeatlink,
        type: 'image',
      ),
      NavIcon(
        label: LocaleKeys.my_bottom_navigation_bar_log_out.tr(),
        icon: Icons.login,
      ),
    ];

    Widget buildIcon(BuildContext context, dynamic item) {
      switch (item.type) {
        case 'image':
          if (item.isBlur) {
            return Opacity(
              opacity: 0.2,
              child: Image.asset(
                item.icon,
                width: 36,
                height: 36,
              ),
            );
          } else {
            return Image.asset(
              item.icon,
              width: 36,
              height: 36,
            );
          }
        case 'customer':
          return ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(2),
              backgroundColor: const Color(0xFFF9BF0D),
            ),
            child: Icon(
              item.icon,
              size: 20,
              color: Colors.white,
            ),
          );
        default:
          return Icon(item.icon, color: AppColors.pale, size: 36);
      }
    }

    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            width: screenWidth,
            padding: const EdgeInsets.only(top: 20, bottom: 16),
            decoration: const BoxDecoration(color: Colors.black),
            child: Wrap(
              runSpacing: 16,
              children: List.generate(isExpanded ? icons.length : 5, (index) {
                return SizedBox(
                  width: screenWidth / 5,
                  child: Column(
                    children: [
                      buildIcon(context, icons[index]),
                      Text(
                        icons[index].label,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: (icons[index].isBlur)
                              ? AppColors.pale.withOpacity(0.2)
                              : Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: isExpanded ? 140 : 70, // Adjust bottom value as needed
          child: Align(
            child: GestureDetector(
              onTap: () => {
                setState(() {
                  isExpanded = !isExpanded;
                }),
              },
              onVerticalDragStart: (DragStartDetails details) => {
                setState(() {
                  isExpanded = !isExpanded;
                }),
              },
              child: Container(
                width: 32,
                height: 32,
                decoration: const BoxDecoration(
                  color: Color(0xFFEBEBEB),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEBEBEB),
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2.0,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        isExpanded
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_up,
                        size: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
