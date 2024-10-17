import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/screens/profile_creation/widgets/custom_button.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  String? _selectedCategory;

  final List<String> _categories = [
    'Art et culture',
    'Actualités et informations',
    'Business et coaching',
    'Comédie et Gastronomie',
    'Cuisine et Gastronomie',
    'Nature et Santé',
    'Sport et Loisirs',
    'Fashion et beauté',
    'Sexualité et contenu pour adultes',
    'Autres',
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
                        LocaleKeys.profile_creation_category_title.tr(),
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
                                  LocaleKeys.profile_creation_category_description.tr(),
                                  style: const TextStyle(color: AppColors.myDark),
                                ),
                                const SizedBox(
                                  height: 40,
                                ), // Augmenté pour laisser de l'espace pour les boutons
                                Text(
                                  LocaleKeys.profile_creation_category_note.tr(),
                                  style: const TextStyle(color: AppColors.myDark),
                                ),
                                const SizedBox(height: 25),
                                ListView(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  children: _categories.map((String category) {
                                    return RadioListTile<String>(
                                      title: Text(category),
                                      value: category,
                                      groupValue: _selectedCategory,
                                      onChanged: (String? value) {
                                        setState(() {
                                          _selectedCategory = value;
                                        });
                                      },
                                    );
                                  }).toList(),
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
                                  child: CustomButton(
                                    text: LocaleKeys.profile_creation_category_previous.tr(),
                                    onPressed: () {
                                      // Action pour le bouton Précédent
                                    },
                                    color: AppColors.myDark,
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: CustomButton(
                                    text: LocaleKeys.profile_creation_category_next.tr(),
                                    onPressed: () {
                                      // Action pour le bouton Suivant
                                    },
                                    color: AppColors.bantubeatPrimary,
                                  ),
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

