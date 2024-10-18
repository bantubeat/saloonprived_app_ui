import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_app_bar.dart';
import 'package:saloonprived_app/src/components/my_bottom_navigation_bar.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class AdultWarningScreen extends StatefulWidget {
  const AdultWarningScreen({super.key});

  @override
  State<AdultWarningScreen> createState() => _AdultWarningScreenState();
}

class _AdultWarningScreenState extends State<AdultWarningScreen> {
  bool _isFirstCheckboxChecked = false;
  bool _isSecondCheckboxChecked = false;

  @override
  Widget build(BuildContext context) {
    // Ajoutez cette ligne pour obtenir la taille de l'écran
    final screenSize = MediaQuery.of(context).size;

    // Définissez la taille du texte en fonction de la taille de l'écran
    final buttonTextSize =
        screenSize.width <= 375 && screenSize.height <= 667 ? 14.0 : 16.0;
    return Scaffold(
      appBar: MyAppBar.forYouWithCustomIcon(
        const Text(
          '+18',
          style: TextStyle(color: AppColors.bantubeatPrimary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyLarge,
                    children: [
                      TextSpan(
                        text: LocaleKeys.attention_page_screen_title.tr(),
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: LocaleKeys.attention_page_screen_subtitle.tr(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Text(
                LocaleKeys.attention_page_screen_text1.tr(),
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.attention_page_screen_text2.tr(),
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.attention_page_screen_text3.tr(),
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.attention_page_screen_text4.tr(),
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.attention_page_screen_text5.tr(),
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.attention_page_screen_text6.tr(),
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.attention_page_screen_text7.tr(),
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.attention_page_screen_text8.tr(),
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.attention_page_screen_text9.tr(),
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.attention_page_screen_text10.tr(),
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.attention_page_screen_text11.tr(),
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.attention_page_screen_text12.tr(),
              ),
              const SizedBox(height: 35),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor:
                        WidgetStateProperty.resolveWith<Color>((Set states) {
                      if (states.contains(WidgetState.selected)) {
                        return AppColors.bantubeatPrimary;
                      }
                      return Colors.transparent;
                    }),
                    value: _isFirstCheckboxChecked,
                    onChanged: (value) {
                      setState(() {
                        _isFirstCheckboxChecked = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      LocaleKeys.attention_page_screen_text13.tr(),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: WidgetStateProperty.resolveWith<Color>(
                        (Set<WidgetState> states) {
                      if (states.contains(WidgetState.selected)) {
                        return AppColors.bantubeatPrimary;
                      }
                      return Colors.transparent;
                    }),
                    value: _isSecondCheckboxChecked,
                    onChanged: (value) {
                      setState(() {
                        _isSecondCheckboxChecked = value!;
                      });
                    },
                  ),
                  Text(
                    LocaleKeys.attention_page_screen_text14.tr(),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            LocaleKeys.attention_page_screen_btn_refuse.tr(),
                            style: TextStyle(
                              color: AppColors.myWhite,
                              fontSize: buttonTextSize,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: _isFirstCheckboxChecked
                            ? () {
                                // Action pour "Entrer"
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _isFirstCheckboxChecked
                              ? AppColors.bantubeatPrimary
                              : AppColors.bantubeatPrimary.withOpacity(0.4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            LocaleKeys.attention_page_screen_btn_accept.tr(),
                            style: TextStyle(
                              color: AppColors.myWhite,
                              fontSize: buttonTextSize,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
							const SizedBox(height: 100),
            ],
          ),
        ),
      ),
      floatingActionButton: MyBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
