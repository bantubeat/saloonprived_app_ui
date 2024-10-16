import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';

class NotificationCardItem extends StatelessWidget {
  const NotificationCardItem({
    required this.time,
    required this.name,
    required this.message,
    required this.image,
    required this.tags,
    super.key,
  });
  final String time;
  final String tags;
  final String name;
  final String message;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(5),
      leading: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(image),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        tags,
                        style: const TextStyle(fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Text(
                LocaleKeys.notification_screen_time.tr(args: [time]),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          RichText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: _buildMessageText(message),
            ),
          ),
        ],
      ),
    );
  }

  List<TextSpan> _buildMessageText(String message) {
    final parts = message.split('En Direct');
    if (parts.length == 2) {
      return [
        TextSpan(text: parts[0]),
        const TextSpan(
          text: 'En Direct',
          style: TextStyle(color: Colors.red),
        ),
        TextSpan(text: parts[1]),
      ];
    }
    return [TextSpan(text: message)];
  }
}
