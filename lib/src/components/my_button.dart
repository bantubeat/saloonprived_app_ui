// lib/src/components/my_button.dart

import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final bool isElevated;
  final Size size;
  final VoidCallback onPressed;
	final double radius;

  const MyButton({
		required this.onPressed,
    this.label = 'Button',
    this.backgroundColor = AppColors.bantubeatPrimary,
    this.isElevated = false,
    this.size = const Size(150.0, 50.0),
    this.radius = 26.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor,

          boxShadow: isElevated
              ? [const BoxShadow(color: AppColors.myBlueGray, blurRadius: 4.0)]
              : [],
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: const TextStyle(color: AppColors.myWhite, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
