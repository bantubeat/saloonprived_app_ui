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
        scaleX: width / 50.0, 
        scaleY: height / 30.0,
        child: Switch(
          value: value,
          onChanged: onChanged,
          activeColor: activeColor,
          inactiveTrackColor: inactiveColor,
        ),
      ),
    );
  }
}
