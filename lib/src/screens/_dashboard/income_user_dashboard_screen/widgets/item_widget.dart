import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    required this.percent,
    required this.image,
    required this.title,
    required this.showTopVector,
    required this.unFillPercentColor,
    required this.fillPercentColor,
    required this.color,
    required this.boxShadow,
    required this.bottomImage,
    super.key,
  });
  final double percent;
  final String image;
  final String bottomImage;
  final String title;
  final bool showTopVector;
  final Color color;
  final Color fillPercentColor;
  final Color unFillPercentColor;
  final List<BoxShadow> boxShadow;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: color,
        boxShadow: boxShadow,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          if (showTopVector)
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(AppAssets.imagesIntersect),
            ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(bottomImage),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 7,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        title, // Replace with your actual content
                        style: GoogleFonts.manrope(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ), // Optional: Text styling
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        '2188',
                        style: GoogleFonts.manrope(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: CircularPercentIndicator(
                        radius: 45.0,
                        percent: percent,
                        center: Text(
                          '${percent * 100}%',
                          style: GoogleFonts.manrope(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        backgroundColor: unFillPercentColor,
                        progressColor: fillPercentColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Image.asset(
                        image,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
