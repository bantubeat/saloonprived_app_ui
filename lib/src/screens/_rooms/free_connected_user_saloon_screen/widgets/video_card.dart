import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoCard extends StatelessWidget {
  final String subcribe;
  final bool isSubcribe;
  final String message;
  final String userImageUrl;

  const VideoCard({
    required this.subcribe,
    required this.isSubcribe,
    required this.message,
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
                    userImageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      message,
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                          size: 10,
                        ),
                        Text(
                          subcribe,
                          style: GoogleFonts.inter(
                            color: const Color.fromRGBO(186, 185, 185, 1),
                            fontSize: 6,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
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
