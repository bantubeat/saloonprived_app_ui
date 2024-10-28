import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 55),
              child: Container(
                width: MediaQuery.of(context).size.width,
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
            ),
            Positioned(
              bottom: 0,
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
                        padding: const EdgeInsets.all(7),
                        child: ClipOval(
                          child: Image.asset(
                            AppAssets.imagesProfil1,
                            fit: BoxFit.cover,
                            width: 75,
                            height: 75,
                            errorBuilder: (c, e, s) => const SizedBox(),
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
                              AppColors.myGray,
                            ),
                          ),
                          icon: const Icon(
                            Icons.camera_alt_sharp,
                            color: AppColors.pale,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 65,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      IconButton(
                        constraints: const BoxConstraints(
                          maxWidth: 40,
                          maxHeight: 40,
                        ),
                        style: ButtonStyle(
                          iconSize: WidgetStateProperty.all(20),
                          backgroundColor: WidgetStateProperty.all(
                            AppColors.myGray,
                          ),
                        ),
                        icon: const Icon(
                          Icons.camera_alt_sharp,
                          color: AppColors.pale,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
