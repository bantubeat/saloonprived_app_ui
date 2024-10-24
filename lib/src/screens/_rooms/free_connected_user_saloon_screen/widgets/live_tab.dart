import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';

class LiveTab extends StatelessWidget {
  const LiveTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: const Color.fromRGBO(249, 191, 13, 0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
              ),
              child: Text(
                LocaleKeys.free_connected_user_saloon_screen_startLive.tr(),
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              LocaleKeys.free_connected_user_saloon_screen_in_construction.tr(),
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(0, 0, 0, 0.7),
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
