import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class Logo extends StatelessWidget {
  final double size;
  const Logo({super.key, this.size = 128});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: Center(
        child: Image.asset(
          AppAssets.imagesLogo,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
