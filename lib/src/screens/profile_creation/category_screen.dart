import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

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
                      const Text(
                        'Catégorie',
                        style: TextStyle(
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
                                const Text(
                                  'Afin de permettre aux fans de trouver facilement votre salon dans les recherches par categorie, veuillez choisir la categorie qui définit la nature de votre salon',
                                  style: TextStyle(color: AppColors.myDark),
                                ),
                                const SizedBox(
                                  height: 40,
                                ), // Augmenté pour laisser de l'espace pour les boutons
                                const Text(
                                  "*Vous ne pouvez choisir qu'une seule catégorie, si vous souhaitez devenir créateur saloonprived, selectionnez réellement la catégorie qui s'identifie au mieux au style de contenu que vous voulez publier sur saloonprived",
                                  style: TextStyle(color: AppColors.myDark),
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
                                    text: 'Précédent',
                                    onPressed: () {
                                      // Action pour le bouton Précédent
                                    },
                                    color: AppColors.myDark,
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: CustomButton(
                                    text: 'Suivant',
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

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color color;
  const CustomButton({
    required this.text,
    required this.onPressed,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: AppColors.myWhite,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ), // Augmenté de 15 à 20
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14, // Augmenté de 16 à 18
        ),
      ),
    );
  }
}
