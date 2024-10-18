import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';

class FavoriteCard extends StatelessWidget {
  final String subcribe;
  final String username;
  final String userImageUrl;

  const FavoriteCard({
    required this.subcribe,
    required this.username,
    required this.userImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(217, 217, 217, 1),
            border: Border.all(color: const Color.fromRGBO(156, 163, 175, 1)),
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  ClipOval(
                    child: Image.asset(
                      userImageUrl,
                      height: 45,
                      width: 45,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    username,
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Center(
                child: Text(
                  '$subcribe ${LocaleKeys.profile_create_user_profile_screen_followers_count.tr()}',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 8,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
