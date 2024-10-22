import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/button_with_icon.dart';
import 'package:saloonprived_app/src/components/primary_button.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class FollowedCreatorItem extends StatelessWidget {
  final String coverImage;
  final String profileImage;
  final String username;
  final int suscriberCount;
  final int suscriptionCount;
  final int likeCount;
  final int viewCount;
  final int consultationCount;

  const FollowedCreatorItem({
    required this.coverImage,
    required this.profileImage,
    required this.username,
    this.suscriberCount = 0,
    this.suscriptionCount = 0,
    this.likeCount = 0,
    this.viewCount = 0,
    this.consultationCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFFEBEBEB),
              width: 2,
            ),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: [
                Image.asset(
                  coverImage,
                  fit: BoxFit.cover,
                  width: screenWidth,
                  height: 150,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.0,
                    left: screenWidth < 768 ? 110.0 : 350.0,
                    right: 5.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        LocaleKeys.common_subscribers.tr(
                          args: [
                            NumberFormat.compact()
                                .format(suscriptionCount)
                                .toString(),
                          ],
                        ),
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        LocaleKeys.common_subscriptions.tr(
                          args: [
                            NumberFormat.compact()
                                .format(suscriptionCount)
                                .toString(),
                          ],
                        ),
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    top: 18.0,
                    bottom: 20.0,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      username,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth < 768 ? 30.0 : 120.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: FittedBox(
                          child: SizedBox(
                            height: 20.0,
                            child: ButtonWithIcon(
                              fixedSize: const Size.fromHeight(15.0),
                              icon: Image.asset(
                                AppAssets.imagesPourb,
                                fit: BoxFit.cover,
                                width: 18,
                                height: 18,
                              ),
                              text: LocaleKeys
                                  .activity_suscription_full_page_screen_send_tip
                                  .tr(),
                              backgroundColor: Colors.white,
                              borderWidth: 1.5,
                              fontSize: 10,
                              color: Colors.black,
                              onPressed: (_) {},
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth < 768 ? 8.0 : 80.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: FittedBox(
                          child: SizedBox(
                            height: 25.0,
                            child: ButtonWithIcon(
                              fixedSize: const Size.fromHeight(20.0),
                              icon: const Icon(
                                Icons.message,
                                color: Color(0xFFBAB9B9),
                              ),
                              text: LocaleKeys
                                  .activity_suscription_full_page_screen_messages
                                  .tr(),
                              fontSize: 10,
                              backgroundColor: Colors.white,
                              color: Colors.black,
                              borderWidth: 1.5,
                              onPressed: (_) {},
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        child: FittedBox(
                          child: SizedBox(
                            height: 25.0,
                            child: ButtonWithIcon(
                              fixedSize: const Size.fromHeight(20.0),
                              icon: Image.asset(
                                AppAssets.imagesfavorite,
                                fit: BoxFit.cover,
                                width: 20,
                                height: 20,
                              ),
                              text: LocaleKeys
                                  .activity_suscription_full_page_screen_add_to_fovorites
                                  .tr(),
                              color: Colors.black,
                              fontSize: 10,
                              backgroundColor: Colors.white,
                              borderWidth: 1.5,
                              onPressed: (_) {},
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    left: 20.0,
                    right: 20.0,
                    bottom: 20.0,
                  ),
                  child: PrimaryButton(
                    text: LocaleKeys
                        .activity_suscription_full_page_screen_unsuscrible
                        .tr(),
                    onPressed: (_) {},
                    backgroundColor: Colors.white,
                    borderWidth: 1.5,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth < 768 ? 8.0 : 30.0,
                  vertical: 5.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      MaterialCommunityIcons.video,
                      color: Colors.white,
                      size: 20,
                    ),
                    Text(
                      NumberFormat.compact().format(viewCount).toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth < 768 ? 8.0 : 30.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.circle,
                      color: Colors.white,
                      size: 6,
                    ),
                    const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                    Text(
                      NumberFormat.compact()
                          .format(consultationCount)
                          .toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth < 768 ? 8.0 : 30.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.circle,
                      color: Colors.white,
                      size: 6,
                    ),
                    const Icon(
                      Icons.favorite_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                    Text(
                      NumberFormat.compact().format(likeCount).toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenWidth > 374 && screenWidth < 411
                      ? screenWidth * 0.33
                      : screenWidth > 411 && screenWidth < 768
                          ? screenWidth * 0.38
                          : screenWidth * 0.5,
                  right: 5,
                ),
                child: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 100,
          left: 20,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                color: AppColors.primary,
                width: 1.02,
              ),
            ),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(profileImage),
            ),
          ),
        ),
      ],
    );
  }
}
