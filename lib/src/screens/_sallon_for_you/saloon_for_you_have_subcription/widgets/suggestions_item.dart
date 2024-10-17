import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuggestionsItem extends StatelessWidget {
  const SuggestionsItem({
    required this.backgourdImages,
    required this.userImage,
    required this.name,
    required this.userName,
    super.key,
  });

  final String backgourdImages;
  final String userImage;
  final String name;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              backgourdImages,
              fit: BoxFit.cover,
              height: 150,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Color.fromRGBO(0, 0, 0, 0.38),
              ),
              height: 75,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ClipOval(
                child: Image.asset(
                  userImage,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  name,
                  style: GoogleFonts.inter(
                    color: const Color.fromRGBO(235, 235, 235, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  userName,
                  style: GoogleFonts.inter(
                    color: const Color.fromRGBO(235, 235, 235, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
