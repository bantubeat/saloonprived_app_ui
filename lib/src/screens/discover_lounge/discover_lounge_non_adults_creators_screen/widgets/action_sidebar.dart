import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';
import 'package:saloonprived_app/src/screens/discover_lounge/discover_lounge_non_adults_creators_screen/widgets/action_button.dart';

import 'share_bottom_sheet_content.dart';

class ActionSidebar extends StatelessWidget {
  final Map<String, dynamic> item;
  const ActionSidebar({required this.item});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 5.0,
          ),
          child: ActionButton(
            icon: Icons.favorite,
            count: item['likeCount'],
            onPressed: (_) {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 5.0,
          ),
          child: ActionButton(
            icon: Icons.comment_rounded,
            count: item['commentCount'],
            onPressed: (_) {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10.0,
          ),
          child: ActionButton(
            icon: Icons.reply_sharp,
            count: item['shareCount'],
            onPressed: (_) {
              showCustomBottomSheet(context);
            },
            isTransform: true,
          ),
        ),
        const CircleAvatar(
          radius: 18.0,
          backgroundImage: AssetImage(
            AppAssets.imagesBzc,
          ),
        ),
      ],
    );
  }

  static void showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => ShareBottomSheetContent(),
    );
  }
}
