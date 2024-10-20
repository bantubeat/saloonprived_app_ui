import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_app_bar.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';
import 'package:saloonprived_app/src/screens/notification_screen/widgets/notification_card_item.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<NotificationCardItem> notifications = [
      const NotificationCardItem(
        name: 'Richachba',
        time: '1',
        tags: '@Richachba',
        message: 'a ajouté un nouvelle vidéo',
        image: AppAssets.imagesAvatarImage,
      ),
      const NotificationCardItem(
        name: 'Richachba',
        time: '1',
        tags: '@Richachba',
        message: 'Vous a envoyé un message',
        image: AppAssets.imagesAvatarImage,
      ),
      const NotificationCardItem(
        name: 'Richachba',
        time: '1',
        tags: '@Richachba',
        message: 'a commencé une diffusion En Direct',
        image: AppAssets.imagesAvatarImage,
      ),
    ];

    return Scaffold(
      backgroundColor: AppColors.myWhite,
      appBar: MyAppBar.forYouWithBellIcon(),
      body: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back, size: 20)),
              const SizedBox(width: 5),
              Text(
                LocaleKeys.notification_screen_title.tr(),
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            color: AppColors.myGray,
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
            	itemCount: notifications.length,
            	itemBuilder: (context, index) {
            		var item = notifications[index];
            		return NotificationCardItem(
            			name: item.name,
            			message: item.message,
            			image: item.image,
            			time: item.time,
            			tags: item.tags,
            		);
            	},
            ),
          ),
        ],
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
