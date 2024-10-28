import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color color;
  const CustomButton({
    required this.text,
    required this.onPressed,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: AppColors.myWhite,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ), // Augmenté de 15 à 20
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14, // Augmenté de 16 à 18
        ),
      ),
    );
  }
}
