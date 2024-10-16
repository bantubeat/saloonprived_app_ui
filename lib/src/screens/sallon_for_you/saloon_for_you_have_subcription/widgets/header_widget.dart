import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      color: Colors.blueGrey,
      child: Stack(
        children: [
          Image.asset(
            AppAssets.imagesSaloonProfileBack,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            top: 10,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromRGBO(252, 204, 55, 1),
                      width: 2,
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      AppAssets.imagesLogo,
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('jjjjvvvvvvfffffffffffffff'),
                    Text('jjjjvvvvvvfffffffffffffff'),
                    Text('jjjjvvvvvvfffffffffffffff'),
                    Text('jjjjvvvvvvfffffffffffffff'),
                    Text('jjjjvvvvvvfffffffffffffff'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
