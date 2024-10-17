import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/components/my_app_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.toDiscoverSingleLine(),
      body: Container(),
    );
  }
}
