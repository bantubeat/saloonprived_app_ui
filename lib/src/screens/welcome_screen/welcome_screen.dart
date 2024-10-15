import 'package:saloonprived_app/src/components/logo.dart';
import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/components/my_app_bar.dart';

// import 'widgets/welcome_app_bar.dart';
import 'widgets/welcome_main_body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen();

  @override
  Widget build(BuildContext context) {
    // All screen must wrapped in a Scaffold
    return Scaffold(
      appBar: MyAppBar.forYouWithCustomIconForYou(
        const Icon(
          Icons.home,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Expanded(child: WelcomeMainBody()),
          const Logo(),
        ],
      ),
    );
  }
}
