import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_app_bar.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class DiscoverSaloonAdultScreen extends StatefulWidget {
  const DiscoverSaloonAdultScreen({super.key});

  @override
  State<DiscoverSaloonAdultScreen> createState() =>
      _DiscoverSaloonAdultScreenState();
}

class _DiscoverSaloonAdultScreenState extends State<DiscoverSaloonAdultScreen> {
  bool _isFirstCheckboxChecked = false;
  bool _isSecondCheckboxChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.withCenterTextAndBadge(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyLarge,
                    children: [
                      TextSpan(
                        text:
                            LocaleKeys.discover_saloon_adult_screen_title.tr(),
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: LocaleKeys.discover_saloon_adult_screen_subtitle
                            .tr(),
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.discover_saloon_adult_screen_text1.tr(),
                style: GoogleFonts.inter(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                LocaleKeys.discover_saloon_adult_screen_text2.tr(),
                style: GoogleFonts.inter(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                LocaleKeys.discover_saloon_adult_screen_text3.tr(),
                style: GoogleFonts.inter(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                LocaleKeys.discover_saloon_adult_screen_text4.tr(),
                style: GoogleFonts.inter(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                LocaleKeys.discover_saloon_adult_screen_text5.tr(),
                style: GoogleFonts.inter(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                LocaleKeys.discover_saloon_adult_screen_text6.tr(),
                style: GoogleFonts.inter(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                LocaleKeys.discover_saloon_adult_screen_text7.tr(),
                style: GoogleFonts.inter(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                LocaleKeys.discover_saloon_adult_screen_text8.tr(),
                style: GoogleFonts.inter(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                LocaleKeys.discover_saloon_adult_screen_text9.tr(),
                style: GoogleFonts.inter(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                LocaleKeys.discover_saloon_adult_screen_text10.tr(),
                style: GoogleFonts.inter(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.discover_saloon_adult_screen_text11.tr(),
                style: GoogleFonts.inter(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                LocaleKeys.discover_saloon_adult_screen_text12.tr(),
                style: GoogleFonts.inter(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor:
                        WidgetStateProperty.resolveWith<Color>((Set states) {
                      if (states.contains(WidgetState.selected)) {
                        return AppColors.bantubeatPrimary;
                      }
                      return Colors.transparent;
                    }),
                    value: _isFirstCheckboxChecked,
                    onChanged: (value) {
                      setState(() {
                        _isFirstCheckboxChecked = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      LocaleKeys.discover_saloon_adult_screen_text13.tr(),
                      softWrap: true,
                      style: GoogleFonts.inter(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: WidgetStateProperty.resolveWith<Color>(
                        (Set<WidgetState> states) {
                      if (states.contains(WidgetState.selected)) {
                        return AppColors.bantubeatPrimary;
                      }
                      return Colors.transparent;
                    }),
                    value: _isSecondCheckboxChecked,
                    onChanged: (value) {
                      setState(() {
                        _isSecondCheckboxChecked = value!;
                      });
                    },
                  ),
                  Text(
                    LocaleKeys.discover_saloon_adult_screen_text14.tr(),
                    style: GoogleFonts.inter(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            LocaleKeys.discover_saloon_adult_screen_btn_refuse
                                .tr(),
                            style: GoogleFonts.inter(
                              color: AppColors.myWhite,
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: () {
                          // Action pour "Entrer"
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _isFirstCheckboxChecked
                              ? AppColors.bantubeatPrimary
                              : const Color.fromRGBO(249, 191, 13, 0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            LocaleKeys.discover_saloon_adult_screen_btn_accept
                                .tr(),
                            style: GoogleFonts.inter(
                              color: AppColors.myWhite,
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
