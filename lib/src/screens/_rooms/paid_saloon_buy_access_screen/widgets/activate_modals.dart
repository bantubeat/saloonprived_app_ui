import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class ActivateModals extends StatelessWidget {
  const ActivateModals({required this.userName, super.key});
  final String userName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
      margin: const EdgeInsets.all(
        0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(AppAssets.imagesValide)),
          const SizedBox(
            height: 20,
          ),
          Text(
            LocaleKeys.paid_saloon_buy_access_screen_payment_success.tr(),
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 10,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            LocaleKeys
                .paid_saloon_buy_access_screen_activate_auto_renewal_button
                .tr(),
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 10,
              color: const Color.fromRGBO(30, 187, 46, 1),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(
              text: LocaleKeys.paid_saloon_buy_access_screen_auto_renewal_left
                  .tr(),
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text: ' $userName ',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: LocaleKeys
                      .paid_saloon_buy_access_screen_auto_renewal_center
                      .tr(),
                ),
                TextSpan(
                  text: ' $userName ',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: LocaleKeys
                      .paid_saloon_buy_access_screen_auto_renewal_right
                      .tr(),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            LocaleKeys.paid_saloon_buy_access_screen_renewal_terms.tr(),
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 8,
              height: 2,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Checkbox(value: true, onChanged: (_) {}),
              Text(
                LocaleKeys
                    .paid_saloon_buy_access_screen_activate_auto_renewal_button
                    .tr(),
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 8,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
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
                    horizontal: 15,
                    vertical: 5,
                  ),
                ),
                child: Text(
                  LocaleKeys.paid_saloon_buy_access_screen_not_now.tr(),
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
                    horizontal: 20,
                    vertical: 5,
                  ),
                ),
                child: Text(
                  LocaleKeys.paid_saloon_buy_access_screen_activate
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
