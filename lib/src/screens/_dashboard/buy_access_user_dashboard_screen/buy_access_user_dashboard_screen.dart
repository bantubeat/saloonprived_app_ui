import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';

import 'widgets/header_widget.dart';

class BuyAccessUserDashboardScreen extends StatelessWidget {
  const BuyAccessUserDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderWidget(),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {
              // Action pour ajouter
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(
                0xFFFCCC37,
              ), // Couleur orange pour le bouton "Ajouter"
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 35,
                vertical: 20,
              ),
            ),
            child: Text(
              LocaleKeys.promote_user_dashboard_screen_buyBZC.tr(),
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
