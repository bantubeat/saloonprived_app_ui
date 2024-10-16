import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class CustomDropdownButtonFormField<T> extends StatelessWidget {
  final T? value;
  final String hint;
  final List<T> items;
  final ValueChanged<T?> onChanged;

  const CustomDropdownButtonFormField({
    required this.value,
    required this.hint,
    required this.items,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: value,
      hint: Text(hint),
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
      items: items
          .map(
            (item) => DropdownMenuItem<T>(
              value: item,
              child: Text(item.toString()),
            ),
          )
          .toList(),
      onChanged: onChanged,
    );
  }
}
