import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class SearchCard extends StatelessWidget {
  final String subcribe;
  final bool isSubcribe;
  final String username;
  final String userImageUrl;

  const SearchCard({
    required this.subcribe,
    required this.isSubcribe,
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
                      height: 85,
                      width: 85,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '@Leatileatitia25',
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Text(
                '$subcribe ${LocaleKeys.search_screen_subscribers_count.tr()}',
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 8,
                  fontWeight: FontWeight.w700,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor:
                      isSubcribe ? AppColors.primary : Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: AppColors.primary),
                    borderRadius: BorderRadius.circular(1000),
                  ),
                ),
                onPressed: () {
                  // Action du bouton
                },
                child: Text(
                  isSubcribe
                      ? LocaleKeys.search_screen_subscribed_label.tr()
                      : LocaleKeys.search_screen_subscribe_button.tr(),
                  style: GoogleFonts.inter(
                    color: isSubcribe ? Colors.white : AppColors.primary,
                    fontSize: 8,
                    fontWeight: FontWeight.w500,
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
