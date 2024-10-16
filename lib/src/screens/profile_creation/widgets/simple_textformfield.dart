import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class SimpleTextFormField extends StatelessWidget {
  const SimpleTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            width: 2,
            color: AppColors.bantubeatPrimary,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            width: 2,
            color: AppColors.bantubeatPrimary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            width: 2,
            color: AppColors.bantubeatPrimary,
          ),
        ),
      ),
    );
  }
}
