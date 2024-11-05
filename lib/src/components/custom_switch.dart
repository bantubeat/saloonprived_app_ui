import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  final Color inactiveColor;
  final double width;
  final double height;

  const CustomSwitch({
    required this.value,
    required this.onChanged,
    this.activeColor = AppColors.primary,
    this.inactiveColor = Colors.grey,
    this.width = 50.0,
    this.height = 30.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Transform.scale(
        scale: 0.7,
        child: Switch(
          value: value,
          onChanged: onChanged,
          activeColor: AppColors.myWhite,
          thumbColor: WidgetStateProperty.all(AppColors.myWhite),
          trackOutlineColor: WidgetStateProperty.all(AppColors.myWhite),
          activeTrackColor: activeColor,
          inactiveTrackColor: AppColors.myGray,
        ),
      ),
    );
  }
}
