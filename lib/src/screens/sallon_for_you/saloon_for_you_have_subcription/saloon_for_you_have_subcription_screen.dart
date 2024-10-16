import 'package:flutter/material.dart';

import 'widgets/header_widget.dart';

class SaloonForYouHaveSubcriptionScreen extends StatelessWidget {
  const SaloonForYouHaveSubcriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(244, 244, 244, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const HeaderWidget(),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
