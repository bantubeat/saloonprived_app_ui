import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
class RichTextWidget extends StatelessWidget {
  final String text;
  const RichTextWidget({
    required this.text, super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: const TextStyle(color: AppColors.myDark, fontWeight: FontWeight.w900),
        children: const [
          TextSpan(
            text: ' *',
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}