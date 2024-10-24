import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class TipModal extends StatelessWidget {
  const TipModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(
        10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              LocaleKeys.tip_modal_send_tip_to.tr(),
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromRGBO(249, 191, 13, 1),
                    width: 2,
                  ),
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.imagesProfil3),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Afrika Kemie',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: const Color.fromRGBO(0, 0, 0, 0.25),
              ),
            ),
            child: TextField(
              onChanged: (value) {},
              textAlignVertical: TextAlignVertical.top,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                hintStyle: GoogleFonts.inter(
                  color: const Color.fromRGBO(217, 217, 217, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                hintText: LocaleKeys.tip_modal_amount_ofBZC.tr(),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: const Color.fromRGBO(0, 0, 0, 0.25),
              ),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  LocaleKeys.tip_modal_balanceBZC.tr(),
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
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
                      horizontal: 45,
                      vertical: 15,
                    ),
                  ),
                  child: Text(
                    '00 BZC',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              text: LocaleKeys.tip_modal_insufficient_balance.tr(),
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(189, 2, 2, 1),
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: ' : ',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: LocaleKeys.tip_modal_byBZC.tr(),
                  style: GoogleFonts.inter(
                    color: const Color.fromRGBO(252, 204, 55, 1),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.black, // Couleur noire pour le bouton "Annuler"
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 35,
                    vertical: 15,
                  ),
                ),
                child: Text(
                  LocaleKeys.tip_modal_cancel.tr(),
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Action pour ajouter
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(249, 191, 13, 0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 35,
                    vertical: 15,
                  ),
                ),
                child: Text(
                  LocaleKeys.tip_modal_send.tr(),
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 12,
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
