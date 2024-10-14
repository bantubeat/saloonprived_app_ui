import 'package:saloonprived_app/src/components/logo.dart';
import 'package:flutter/material.dart';

import 'widgets/welcome_app_bar.dart';
import 'widgets/welcome_main_body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen();

  @override
  Widget build(BuildContext context) {
    // All screen must wrapped in a Scaffold
    return Scaffold(
      appBar: WelcomeAppBar(),
      body: Column(
        children: [
          Expanded(child: WelcomeMainBody()),
          const Logo(),
        ],
      ),
    );
  }
}
