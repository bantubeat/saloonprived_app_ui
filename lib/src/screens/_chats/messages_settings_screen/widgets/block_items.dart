import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class BlockItem extends StatelessWidget {
  const BlockItem({required this.data, super.key});
  final Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 10,
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Icon(
                  data['icon']!,
                  color: data['isSelect']!
                      ? AppColors.primary
                      : Colors.black.withOpacity(0.5),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  data['title']!,
                  style: GoogleFonts.inter(
                    color: data['isSelect']!
                        ? AppColors.primary
                        : Colors.black.withOpacity(0.5),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: data['isSelect']!
                ? AppColors.primary
                : Colors.black.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
