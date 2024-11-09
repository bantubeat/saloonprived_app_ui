import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
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
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                              AppAssets.imagesProfil1,
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
                              'Afrika Kemie',
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Icon(
                              Icons.check_circle,
                              color: AppColors.primary,
                              size: 9,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Wrap(
                            alignment: WrapAlignment.spaceEvenly,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '10k',
                                      style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text: LocaleKeys
                                          .profile_create_user_profile_screen_subscriptions_count
                                          .tr(),
                                      style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontSize: 12,
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
                                      text: '10k',
                                      style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text: LocaleKeys
                                          .free_connected_user_saloon_screen_followers
                                          .tr(),
                                      style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color.fromRGBO(
                                        209,
                                        213,
                                        219,
                                        1,
                                      ),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.share,
                                    color: AppColors.primary,
                                    size: 15,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color.fromRGBO(
                                        209,
                                        213,
                                        219,
                                        1,
                                      ),
                                    ),
                                  ),
                                  child: Image.asset(
                                    AppAssets.imagesPourb,
                                    width: 15,
                                    height: 15,
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
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.free_connected_user_saloon_screen_content_creator
                    .tr(),
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                LocaleKeys.free_connected_user_saloon_screen_adult_content.tr(),
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                LocaleKeys.free_connected_user_saloon_screen_influencer.tr(),
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                LocaleKeys.free_connected_user_saloon_screen_model.tr(),
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.facebook_sharp,
                        color: Color.fromRGBO(18, 35, 188, 1),
                        size: 25,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        AppAssets.imagesWhatsAppLogo,
                        width: 20,
                        height: 20,
                      ),
                    ],
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
                        vertical: 5,
                      ),
                    ),
                    child: Text(
                      LocaleKeys.free_connected_user_saloon_screen_edit_profile
                          .tr(),
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}