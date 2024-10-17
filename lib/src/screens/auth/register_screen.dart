import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/auth_bottom.dart';
import 'package:saloonprived_app/src/components/button_with_icon.dart';
import 'package:saloonprived_app/src/components/primary_button.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: SizedBox.square(
          dimension: 20,
          child: Center(
            child: Image.asset(
              AppAssets.imagesAuthIcon,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Saloon',
                style: TextStyle(
                  color: Color.fromRGBO(252, 204, 55, 1),
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: 'Prived',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 630,
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(249, 191, 13, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    child: Image.asset(
                      AppAssets.imagesAuthVector,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            LocaleKeys.register_screen_header_text.tr(),
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w900,
                              fontSize: 30,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    LocaleKeys.register_screen_title.tr(),
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 24,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    LocaleKeys.login_screen_description.tr(),
                                    style: GoogleFonts.inter(fontSize: 10),
                                  ),
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                ButtonWithIcon(
                                  text: LocaleKeys
                                      .login_screen_login_with_google
                                      .tr(),
                                  icon: Image.asset(
                                    AppAssets.imagesGoogle,
                                    fit: BoxFit.contain,
                                  ),
                                  onPressed: (context) {},
                                  backgroundColor: Colors.white,
                                  borderWidth: 2,
                                ),
                                const SizedBox(
                                  height: 22,
                                ),
                                PrimaryButton(
                                  onPressed: (context) {
                                    //
                                  },
                                  fontSize: 14,
                                  text: LocaleKeys.register_screen_sign_up_email
                                      .tr(),
                                  backgroundColor: AppColors.myWhite,
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                                const SizedBox(
                                  height: 38,
                                ),
                                Text(
                                  LocaleKeys.register_screen_new_to_featlink
                                      .tr(),
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: PrimaryButton(
                                    onPressed: (context) {
                                      //
                                    },
                                    text: LocaleKeys.register_screen_login
                                        .tr()
                                        .toUpperCase(),
                                    backgroundColor: AppColors.myWhite,
                                    fontSize: 14,
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  LocaleKeys.login_screen_terms.tr(),
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(fontSize: 6),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //
            //

            const AuthBottom(),
          ],
        ),
      ),
    );
  }
}
