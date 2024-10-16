import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
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
        image: AppAssets.fakeAvatarImage,
      ),
      const NotificationCardItem(
        name: 'Richachba',
        time: '1',
        tags: '@Richachba',
        message: 'Vous a envoyé un message',
        image: AppAssets.fakeAvatarImage,
      ),
      const NotificationCardItem(
        name: 'Richachba',
        time: '1',
        tags: '@Richachba',
        message: 'a commencé une diffusion En Direct',
        image: AppAssets.fakeAvatarImage,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            size: 40,
          ),
        ),
        title: Text(LocaleKeys.notification_screen_title.tr()),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
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
    );
  }
}
