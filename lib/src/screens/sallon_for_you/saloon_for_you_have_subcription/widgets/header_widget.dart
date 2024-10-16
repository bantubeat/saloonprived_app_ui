import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      color: Colors.blueGrey,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Text(',,,,')],
      ),
    );
  }
}
