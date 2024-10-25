import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class Item {
  final String date;
  final List<dynamic> pricesList;
  final bool isSelected;
  final Color color;

  Item({
    required this.date,
    required this.isSelected,
    required this.pricesList,
    required this.color,
  });
}

class BlockItemWidget extends StatelessWidget {
  final String landingNumber;
  final String landingText;
  final List<Item> elements;
  const BlockItemWidget({
    required this.elements,
    required this.landingNumber,
    required this.landingText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.access_price_user_dashboard_screen_landing
                  .tr(args: [landingNumber]),
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 9,
            ),
            Expanded(
              child: Center(
                child: Text(
                  landingText,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        ...List.generate(
          elements.length,
          (elementIndex) {
            final item = elements[elementIndex];
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(
                      right: 10,
                    ),
                    width: 52,
                    height: 45,
                    decoration: BoxDecoration(
                      color: item.color,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        item.date,
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ...List.generate(
                          item.pricesList.length,
                          (elementIndex) {
                            final price = item.pricesList[elementIndex];
                            return Column(
                              children: [
                                Center(
                                  child: Text(
                                    price['label'],
                                    style: GoogleFonts.inter(
                                      color:
                                          const Color.fromRGBO(35, 35, 35, 1),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    price['value'],
                                    style: GoogleFonts.inter(
                                      color: const Color.fromRGBO(
                                        113,
                                        142,
                                        191,
                                        1,
                                      ),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 2),
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(243, 244, 246, 1),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color.fromRGBO(243, 235, 192, 1),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                          size: 11,
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: item.isSelected
                                ? AppColors.primary
                                : const Color.fromRGBO(156, 163, 175, 1),
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            'BZC',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 6,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        if (landingNumber != '4')
          const SizedBox(
            height: 7,
          ),
        if (landingNumber != '4')
          const Divider(
            height: 2,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        if (landingNumber != '4')
          const SizedBox(
            height: 7,
          ),
      ],
    );
  }
}
