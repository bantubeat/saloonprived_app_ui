import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/screens/discover_lounge/discover_lounge_non_adults_creators_screen/widgets/avatar.dart';

class UserProfile extends StatelessWidget {
  final Map<String, dynamic> user;
  const UserProfile({required this.user});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Row(
        children: [
          Avatar(avatarUrl: user['avatar']),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user['username'],
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  letterSpacing: .7,
                ),
              ),
              Container(
                height: 20,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: const Color(0xFFF9BF0D),
                  ),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: Center(
                  child: Text(
                    LocaleKeys.common_suscriber.tr(),
                    style: const TextStyle(
                      fontSize: 10,
                      color: Color(0xFFF9BF0D),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
