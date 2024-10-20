import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class Item {
  final String title;
  final String price;
  final bool isSelected;

  Item({
    required this.title,
    required this.price,
    required this.isSelected,
  });
}

class BlockItemWidget extends StatelessWidget {
  final String title;
  final List<Item> elements;
  const BlockItemWidget({
    required this.title,
    required this.elements,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          title,
          style: GoogleFonts.inter(
            color: Colors.black,
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        ),
        ...List.generate(
          elements.length,
          (elementIndex) {
            final item = elements[elementIndex];
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.title,
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        item.price,
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
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
      ],
    );
  }
}
