import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderBlock extends StatelessWidget {
  const HeaderBlock({required this.text, super.key, this.value, this.gradient});
  final String text;
  final String? value;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5,
      ),
      height: 110,
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        gradient: gradient ??
            const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF9400D3), // #9400D3
                Color(0xFF4B0082), // #4B0082
              ],
              stops: [
                -0.062,
                1.0193,
              ], // for angles similar to 100.83deg
            ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment:
            value != null ? MainAxisAlignment.start : MainAxisAlignment.center,
        crossAxisAlignment: value != null
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(235, 235, 235, 1),
            ),
          ),
          if (value != null)
            Text(
              value!,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(235, 235, 235, 1),
              ),
            ),
        ],
      ),
    );
  }
}
