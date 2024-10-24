import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class ImageCard extends StatelessWidget {
  final String subcribe;
  final bool isSubcribe;
  final String username;
  final List<String> userImageUrl;

  const ImageCard({
    required this.subcribe,
    required this.isSubcribe,
    required this.username,
    required this.userImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  child: Image.asset(
                    userImageUrl[0],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            if (userImageUrl.length > 1)
              const Positioned(
                top: 5,
                right: 5,
                child: Icon(
                  Icons.photo_library,
                  size: 19,
                  color: Colors.white,
                ),
              ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.45),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 30,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.favorite_outline_sharp,
                      color: AppColors.primary,
                      size: 16,
                    ),
                    Text(
                      '100 ',
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(186, 185, 185, 1),
                        fontSize: 6,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
