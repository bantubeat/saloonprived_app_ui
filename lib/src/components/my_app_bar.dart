import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showSecondLine;
  final Widget? customIcon;
  final bool isForYou;

  // Constructeur privé appelé par les constructeurs personnalisés
  const MyAppBar._({
    required this.showSecondLine,
    required this.isForYou,
    this.customIcon,
  });

  // MyAppBar.forYouSingleLine
  factory MyAppBar.forYouSingleLine() {
    return const MyAppBar._(
      showSecondLine: false,
      isForYou: true,
    );
  }

  // MyAppBar.forYouWithBellIconForYou
  factory MyAppBar.forYouWithBellIconForYou() {
    return const MyAppBar._(
      showSecondLine: true,
      customIcon: Badge(
        backgroundColor: Color.fromRGBO(249, 191, 13, 1),
        smallSize: 20,
        label: Text(
          '+99',
          maxLines: 1,
          style: TextStyle(
            color: Colors.white,
            fontSize: 6,
            fontWeight: FontWeight.w400,
          ),
        ),
        child: Icon(
          Icons.notifications,
          color: Colors.white,
        ),
      ),
      isForYou: true,
    );
  }

  // MyAppBar.forYouWithCustomIconForYou
  factory MyAppBar.forYouWithCustomIconForYou(Widget customIcon) {
    return MyAppBar._(
      showSecondLine: true,
      customIcon: customIcon,
      isForYou: true,
    );
  }

  // MyAppBar.toDiscoverSingleLine
  factory MyAppBar.toDiscoverSingleLine() {
    return const MyAppBar._(
      showSecondLine: false,
      isForYou: false,
    );
  }

  // MyAppBar.toDiscoverWithBellIcon
  factory MyAppBar.toDiscoverWithBellIcon() {
    return const MyAppBar._(
      showSecondLine: true,
      customIcon: Badge(
        smallSize: 20,
        backgroundColor: Color.fromRGBO(249, 191, 13, 1),
        label: Text(
          '+99',
          maxLines: 1,
          style: TextStyle(
            color: Colors.white,
            fontSize: 6,
            fontWeight: FontWeight.w400,
          ),
        ),
        child: Icon(
          Icons.notifications,
          color: Colors.white,
        ),
      ),
      isForYou: false,
    );
  }

  // MyAppBar.toDiscoverWithCustomIcon
  factory MyAppBar.toDiscoverWithCustomIcon(Widget customIcon) {
    return MyAppBar._(
      showSecondLine: true,
      customIcon: customIcon,
      isForYou: false,
    );
  }
  @override
  Widget build(BuildContext context) {
    final double size = showSecondLine ? 90.0 : 47.0;
    return AppBar(
      toolbarHeight: size,
      flexibleSpace: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
            decoration:
                const BoxDecoration(color: Color.fromRGBO(44, 43, 33, 1)),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      LocaleKeys.my_app_bar_for_discover_text.tr(),
                      style: TextStyle(
                        fontWeight:
                            isForYou ? FontWeight.normal : FontWeight.w900,
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      LocaleKeys.my_app_bar_for_you_text.tr(),
                      style: TextStyle(
                        fontWeight:
                            isForYou ? FontWeight.w900 : FontWeight.normal,
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.all(3.0),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    child: const Icon(
                      size: 18,
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (showSecondLine)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(42, 41, 41, 0.58)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    color: Color.fromRGBO(249, 191, 13, 1),
                  ),
                  if (customIcon != null) customIcon!,
                ],
              ),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(showSecondLine ? 90.0 : 47.0);
}
