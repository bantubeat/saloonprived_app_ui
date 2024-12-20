import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/components/my_app_bar.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
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
        image: AppAssets.imagesFakeAvatar,
      ),
      const NotificationCardItem(
        name: 'Richachba',
        time: '1',
        tags: '@Richachba',
        message: 'Vous a envoyé un message',
        image: AppAssets.imagesFakeAvatar,
      ),
      const NotificationCardItem(
        name: 'Richachba',
        time: '1',
        tags: '@Richachba',
        message: 'a commencé une diffusion En Direct',
        image: AppAssets.imagesFakeAvatar,
      ),
    ];

    return Scaffold(
      appBar: MyAppBar.forYouWithBellIcon(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: ListView.builder(
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              final item = notifications[index];
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
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
