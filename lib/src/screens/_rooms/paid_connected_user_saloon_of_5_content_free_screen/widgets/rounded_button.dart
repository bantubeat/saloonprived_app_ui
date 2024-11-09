import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class RoundedButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const RoundedButton({
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 150, maxWidth: 300),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.myDark, // Couleur du fond
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // Bords arrondis
          ),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColors.myWhite),
            const SizedBox(width: 10), // Espacement entre l'icône et le texte
            Flexible(
              child: Text(
                text,
                style: const TextStyle(
                  color: AppColors.myWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
