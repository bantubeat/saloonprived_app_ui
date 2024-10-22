import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';

class PublishVideoImageCameraScreen extends StatelessWidget {
  const PublishVideoImageCameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
