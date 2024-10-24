import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';

class ByCashModal extends StatelessWidget {
  const ByCashModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(
        10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.tip_modal_redirection.tr(),
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            LocaleKeys.tip_modal_cashout_tokens.tr(),
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w700,
              fontSize: 10,
              color: const Color.fromRGBO(0, 0, 0, 0.75),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            LocaleKeys.tip_modal_click_ok_redirect.tr(),
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w700,
              fontSize: 10,
              color: const Color.fromRGBO(0, 0, 0, 0.75),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            LocaleKeys.tip_modal_check_no_show.tr(),
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w700,
              fontSize: 10,
              color: const Color.fromRGBO(0, 0, 0, 0.75),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Checkbox(
                side: const BorderSide(
                  color: Color.fromRGBO(249, 191, 13, 1),
                ),
                value: false,
                onChanged: (bool? value) {},
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                LocaleKeys.tip_modal_no_show_message.tr(),
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  // Action pour ajouter
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(249, 191, 13, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                ),
                child: Text(
                  LocaleKeys.tip_modal_ok.tr(),
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
