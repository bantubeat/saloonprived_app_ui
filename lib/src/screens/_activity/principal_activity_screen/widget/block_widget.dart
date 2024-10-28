import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class BlockWidget extends StatelessWidget {
  const BlockWidget({
    required this.discussion,
    required this.index,
    super.key,
  });
  final int index;
  final Map<String, dynamic> discussion;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromRGBO(217, 217, 217, 1),
          ),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 15,
          left: 25,
          right: 10,
        ),
        color: index == 1 ? const Color.fromRGBO(252, 204, 55, 0.21) : null,
        child: InkWell(
          onTap: () {},
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    discussion['title']!,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(0, 0, 0, 0.7),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    discussion['subtitle']!,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(0, 0, 0, 0.7),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 110,
                height: 50,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.primary,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(discussion['avatar']![0]),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.primary,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(discussion['avatar']![1]),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.primary,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(discussion['avatar']![2]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
