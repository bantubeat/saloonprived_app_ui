import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class DisabledModals extends StatelessWidget {
  const DisabledModals({required this.userName, super.key});
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 400,
      margin: const EdgeInsets.all(
        0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(AppAssets.imagesError)),
          const SizedBox(
            height: 25,
          ),
          RichText(
            text: TextSpan(
              text: LocaleKeys
                  .current_access_user_subscription_activity_screen_auto_enewal_canceled_warning
                  .tr(),
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 1.4,
              ),
              children: [
                TextSpan(
                  text: ' @$userName',
                  style: GoogleFonts.inter(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            LocaleKeys
                .current_access_user_subscription_activity_screen_access_ancelled_at_end
                .tr(),
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              height: 1.4,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.black, // Couleur noire pour le bouton "Annuler"
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 5,
                  ),
                ),
                child: Text(
                  LocaleKeys
                      .current_access_user_subscription_activity_screen_cancel
                      .tr()
                      .toUpperCase(),
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Action pour ajouter
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(249, 191, 13, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 5,
                  ),
                ),
                child: Text(
                  LocaleKeys
                      .current_access_user_subscription_activity_screen_validate
                      .tr()
                      .toUpperCase(),
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
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
