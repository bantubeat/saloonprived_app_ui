import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

import 'widgets/custom_dropdown_button.dart';
import 'widgets/rich_text.dart';
import 'widgets/simple_textformfield.dart';

class ProfileCreationScreen extends StatefulWidget {
  const ProfileCreationScreen({super.key});

  @override
  State<ProfileCreationScreen> createState() => _ProfileCreationScreenState();
}

class _ProfileCreationScreenState extends State<ProfileCreationScreen> {
  String? selectedYear;
  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(LocaleKeys.welcome_page_screen_welcome_to_saloonprived.tr(), textAlign: TextAlign.end, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              const SizedBox(height: 12),
                              Text(LocaleKeys.welcome_page_screen_complete_these_information_to_create_your_profile.tr(), textAlign: TextAlign.end),
                            ],
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                        RichTextWidget(text: LocaleKeys.welcome_page_screen_username.tr()),
                        const SizedBox(height: 8),
                        const SimpleTextFormField(),            
                        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                        RichTextWidget(text: LocaleKeys.welcome_page_screen_birth_year.tr()),
                        const SizedBox(height: 8),
                        CustomDropdownButtonFormField<String>(
                          value: selectedYear,
                          hint: LocaleKeys.welcome_page_screen_choose_in_the_list.tr(),
                          items: List.generate(100, (index) => DateTime.now().year - index)
                              .map((year) => year.toString())
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedYear = value;
                            });
                          },
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                        RichTextWidget(text: LocaleKeys.welcome_page_screen_country.tr()),
                        const SizedBox(height: 8),
                        CustomDropdownButtonFormField<String>(
                          value: selectedCountry,
                          hint: LocaleKeys.welcome_page_screen_choose_in_the_list.tr(),
                          items: const ['France', 'Belgique', 'Suisse', 'Canada'],
                          onChanged: (value) {
                            setState(() {
                              selectedCountry = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 80), // Espace pour le bouton et l'ombre
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    AppColors.bantubeatPrimary,
                    AppColors.bantubeatPrimary.withOpacity(0.0),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).size.height * 0.1,
            child: ElevatedButton(
              onPressed: () {
                // Ajoutez ici la logique pour enregistrer les données
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.bantubeatPrimary,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text(LocaleKeys.welcome_page_screen_save.tr(), style: const TextStyle(fontSize: 18, color: AppColors.myWhite),),
            ),
          ),
        ],
      ),
    );
  }
}


