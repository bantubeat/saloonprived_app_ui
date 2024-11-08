import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class UploadContentLoaderScreen extends StatefulWidget {
  const UploadContentLoaderScreen({super.key});

  @override
  State<UploadContentLoaderScreen> createState() =>
      _UploadContentLoaderScreenState();
}

class _UploadContentLoaderScreenState extends State<UploadContentLoaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularPercentIndicator(
          radius: 40,
          percent: 0.25,
          center: const Text(
            '25%',
            style: TextStyle(color: AppColors.myGray),
          ),
          progressColor: AppColors.bantubeatPrimary,
          backgroundColor: AppColors.myGray50,
          circularStrokeCap: CircularStrokeCap.round,
          animateFromLastPercent: true,
        ),
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}