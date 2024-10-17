import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';

import 'package:saloonprived_app/src/resources/app_assets.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  int _curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _curentIndex = index;
              });
            },
          ),
          items: ['', '', '', '', ''].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Stack(
                  children: [
                    Image.asset(
                      AppAssets.imagesSaloonProfileBack,
                      fit: BoxFit.contain,
                    ),
                    Positioned(
                      bottom: 45,
                      left: 10,
                      right: 10,
                      child: PointIndicator(
                        totalItems: 5,
                        selectedIndex: _curentIndex,
                        size: 10,
                      ),
                    ),
                  ],
                );
              },
            );
          }).toList(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                text: LocaleKeys
                    .saloon_for_you_have_subcription_screen_advertisement_title
                    .tr(),
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
                children: [
                  TextSpan(
                    text: LocaleKeys
                        .saloon_for_you_have_subcription_screen_learn_more
                        .tr(),
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(249, 191, 13, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PointIndicator extends StatelessWidget {
  final int totalItems; // Nombre total d'éléments
  final int selectedIndex; // Index de l'élément sélectionné
  final double size; // Index de l'élément sélectionné

  const PointIndicator({
    required this.totalItems,
    required this.selectedIndex,
    required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalItems, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 6,
          ),
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == selectedIndex
                ? const Color.fromRGBO(249, 191, 13, 1)
                : const Color.fromRGBO(235, 235, 235, 1),
          ),
        );
      }),
    );
  }
}
