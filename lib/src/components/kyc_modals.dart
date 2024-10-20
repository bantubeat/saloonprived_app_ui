import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/primary_button.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class KycModals extends StatelessWidget {
  const KycModals({super.key});

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
          Image.asset(AppAssets.imagesError),
          const SizedBox(
            height: 20,
          ),
          Text(
            LocaleKeys.tip_modal_must_be_creator.tr(),
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 10,
              height: 2,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          PrimaryButton(
            text: LocaleKeys.tip_modal_become_creator.tr(),
            onPressed: (con) {},
            fontSize: 10,
            fontWeight: FontWeight.w700,
            borderRadius: BorderRadius.circular(6),
          ),
        ],
      ),
    );
  }
}
