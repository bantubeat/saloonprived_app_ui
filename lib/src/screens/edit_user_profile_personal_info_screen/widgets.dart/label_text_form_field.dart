import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/components/input_text_field.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class LabelTextFormField extends StatelessWidget {
  const LabelTextFormField({
    required this.label,
    this.readOnly = false,
    this.hintText,
    super.key,
  });

  final String label;
  final String? hintText;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        InputTextField(
          hintText: hintText ?? '',
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          readOnly: readOnly,
          color: AppColors.myGray600,
          backgroundColor: AppColors.myGray50,
          borderColor: AppColors.myGray50,
          padding: const EdgeInsets.all(8),
          borderWidth: 0,
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
