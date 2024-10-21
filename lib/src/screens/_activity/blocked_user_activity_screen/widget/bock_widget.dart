import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';

class BockWidget extends StatelessWidget {
  const BockWidget({
    required this.name,
    required this.subcribeCount,
    required this.followerCount,
    required this.coverImage,
    required this.profileImage,
    super.key,
  });
  final String name;
  final String subcribeCount;
  final String followerCount;
  final String coverImage;
  final String profileImage;

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
                            Icons.image,
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
              left: 30,
              right: 20,
              bottom: 5,
            ),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color(
                      0xFFFCCC37,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 2,
                    ),
                  ),
                  child: Text(
                    textAlign: TextAlign.left,
                    LocaleKeys.blocked_user_activity_screen_un_locked.tr(),
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
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
