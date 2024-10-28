import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class BlockWidget extends StatelessWidget {
  const BlockWidget({
    required this.name,
    required this.subcribeCount,
    required this.followerCount,
    required this.coverImage,
    required this.isFollowes,
    required this.profileImage,
    super.key,
  });
  final String name;
  final String subcribeCount;
  final String followerCount;
  final String coverImage;
  final String profileImage;
  final bool isFollowes;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 187,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 128,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.network(
                      coverImage,
                      width: MediaQuery.of(context).size.width,
                      height: 130,
                      fit: BoxFit.cover,
                      errorBuilder: (c, e, s) => const SizedBox(),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  left: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.videocam,
                            size: 16,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 3.0,
                            ),
                            child: Text(
                              '30',
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            width: 3,
                            height: 3,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 2,
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const Icon(
                            Icons.photo_size_select_large_rounded,
                            size: 16,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 3.0,
                            ),
                            child: Text(
                              '15',
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            width: 3,
                            height: 3,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 2,
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const Icon(
                            Icons.favorite_border_outlined,
                            size: 16,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 3.0,
                            ),
                            child: Text(
                              '10k',
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.more_vert_outlined,
                        size: 16,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 7,
                  right: 20,
                  left: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color.fromRGBO(249, 191, 13, 1),
                                width: 2,
                              ),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                profileImage,
                                fit: BoxFit.cover,
                                width: 65,
                                height: 65,
                                errorBuilder: (c, e, s) => const SizedBox(),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                name,
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: subcribeCount,
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontSize: 9,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: LocaleKeys
                                        .profile_create_user_profile_screen_subscriptions_count
                                        .tr(),
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: followerCount,
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: LocaleKeys
                                        .free_connected_user_saloon_screen_followers
                                        .tr(),
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 5,
            ),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: AppColors.primary,
                      ),
                    ),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset(
                          AppAssets.imagesPourb,
                          width: 15,
                          height: 15,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          LocaleKeys.fans_activity_screen_send_tip_to.tr(),
                          style: GoogleFonts.inter(
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                Wrap(
                  alignment: WrapAlignment.spaceAround,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: AppColors.primary,
                          ),
                        ),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Icon(
                              Icons.message,
                              color: Color.fromRGBO(186, 185, 185, 1),
                              size: 15,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              LocaleKeys.fans_activity_screen_messages.tr(),
                              style: GoogleFonts.inter(
                                color: const Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: AppColors.primary,
                          ),
                        ),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color.fromRGBO(209, 213, 219, 1),
                                ),
                              ),
                              child: const Icon(
                                Icons.star_purple500_sharp,
                                color: AppColors.primary,
                                size: 15,
                              ),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              LocaleKeys.fans_activity_screen_add_to_favorite
                                  .tr(),
                              style: GoogleFonts.inter(
                                color: const Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 23,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: isFollowes
                          ? Colors.white
                          : const Color.fromRGBO(249, 191, 13, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: !isFollowes
                            ? BorderSide.none
                            : const BorderSide(color: AppColors.primary),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 2,
                      ),
                    ),
                    child: Text(
                      textAlign: TextAlign.left,
                      !isFollowes
                          ? LocaleKeys.fans_activity_screen_subscribe_button
                              .tr()
                          : LocaleKeys.fans_activity_screen_unsubscribe_button
                              .tr(),
                      style: GoogleFonts.inter(
                        color: !isFollowes ? Colors.white : AppColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
