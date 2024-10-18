import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/primary_button.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  String? _selectedCategory;

  final List<String> _categories = [
    LocaleKeys.category_screen_art_and_culture.tr(),
    LocaleKeys.category_screen_news_and_information.tr(),
    LocaleKeys.category_screen_business_and_coaching.tr(),
    LocaleKeys.category_screen_comedy_and_stand_up.tr(),
    LocaleKeys.category_screen_cuisine_and_gastronomy.tr(),
    LocaleKeys.category_screen_nature_and_health.tr(),
    LocaleKeys.category_screen_sport_and_leisure.tr(),
    LocaleKeys.category_screen_fashion_and_beauty.tr(),
    LocaleKeys.category_screen_sexuality_and_adult_content.tr(),
    'category_screen.other'.tr(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Column(
                    children: [
                      // Ajout du titre centré ici
                      Text(
                        LocaleKeys.category_screen_category.tr(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Ajusté pour une meilleure visibilité
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20), // Espace après le titre
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.myGray.withOpacity(0.2),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  LocaleKeys.category_screen_description.tr(),
                                  style: const TextStyle(color: AppColors.myDark),
                                ),
                                const SizedBox(
                                  height: 40,
                                ), // Augmenté pour laisser de l'espace pour les boutons
                                Text(
                                  LocaleKeys.category_screen_note.tr(),
                                  style: const TextStyle(color: AppColors.myDark),
                                ),
                                const SizedBox(height: 25),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: _categories.length,
                                  itemBuilder: (context, index) {
                                    final category = _categories[index];
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            _selectedCategory = category;
                                          });
                                        },
                                        child: Row(
                                          children: [
                                            AnimatedContainer(
                                              duration: const Duration(milliseconds: 300),
                                              width: 24,
                                              height: 24,
                                              decoration: BoxDecoration(
                                                color: _selectedCategory == category
                                                    ? AppColors.bantubeatPrimary
                                                    : Colors.white,
                                                borderRadius: BorderRadius.circular(4),
                                                border: Border.all(
                                                  color: _selectedCategory == category
                                                      ? AppColors.bantubeatPrimary
                                                      : Colors.grey,
                                                  width: 2,
                                                ),
                                              ),
                                              child: _selectedCategory == category
                                                  ? const Icon(Icons.check, size: 18, color: Colors.white)
                                                  : null,
                                            ),
                                            const SizedBox(width: 12),
                                            Expanded(
                                              child: Text(
                                                category,
                                                style: TextStyle(
                                                  color: _selectedCategory == category
                                                      ? AppColors.bantubeatPrimary
                                                      : Colors.black,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 50,
                                ), // Espace pour les boutons
                              ],
                            ),
                          ),
                          Positioned(
                            left:
                                20, // Ajouté pour éviter que les boutons ne collent aux extrémités
                            right:
                                20, // Ajouté pour éviter que les boutons ne collent aux extrémités
                            bottom:
                                -23, // Ajusté pour compenser la hauteur accrue des boutons
                            child: Row(
                              children: [
                                Expanded(
                                  child: 
																		PrimaryButton(
																			text: LocaleKeys.category_screen_previous.tr(),
																			onPressed: (context) {
																				// Action pour le bouton Précédent
																			},
																			backgroundColor: AppColors.myDark,
																		),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: PrimaryButton(text: LocaleKeys.category_screen_next.tr(), onPressed: (context){}), 
																),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ), // Ajouté pour créer de l'espace en bas des boutons
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}