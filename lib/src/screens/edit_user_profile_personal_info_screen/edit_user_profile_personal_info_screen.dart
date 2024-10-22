import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class EditUserProfilePersonalInfoScreen extends StatelessWidget {
  const EditUserProfilePersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.myWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  height: 187,
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 128,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Image.network(
                          AppAssets.imagesPrivedCover,
                          width: MediaQuery.of(context).size.width,
                          height: 130,
                          fit: BoxFit.cover,
                          errorBuilder: (c, e, s) => const SizedBox(),
                        ),
                      ),
                      Positioned(
                        bottom: 7,
                        right: 0,
                        left: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  padding: const EdgeInsets.all(1),
                                  child: ClipOval(
                                    child: Image.asset(
                                      AppAssets.imagesProfil1,
                                      fit: BoxFit.cover,
                                      width: 75,
                                      height: 75,
                                      errorBuilder: (c, e, s) =>
                                          const SizedBox(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: IconButton(
                                    constraints: const BoxConstraints(
                                      maxWidth: 40,
                                      maxHeight: 40,
                                    ),
                                    style: ButtonStyle(
                                      iconSize: WidgetStateProperty.all(20),
                                      backgroundColor: WidgetStateProperty.all(
                                        AppColors.bantubeatPrimary,
                                      ),
                                    ),
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
