import 'package:flutter/material.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

import 'image_card.dart';

class ImageTab extends StatelessWidget {
  const ImageTab({super.key});

  static List<Map<String, dynamic>> myData = [
    {
      'isSubcribe': true,
      'subcribe': '110k',
      'username': 'Créole',
      'userImageUrl': [AppAssets.imagesProfil1],
    },
    {
      'isSubcribe': false,
      'subcribe': '200',
      'username': 'Créole',
      'userImageUrl': [AppAssets.imagesProfil2, AppAssets.imagesProfil2],
    },
    {
      'isSubcribe': true,
      'subcribe': '90k',
      'username': 'Créole',
      'userImageUrl': [AppAssets.imagesProfil3],
    },
    {
      'isSubcribe': false,
      'subcribe': '20k',
      'username': 'Pièrre',
      'userImageUrl': [AppAssets.imagesProfil4],
    },
    {
      'isSubcribe': false,
      'subcribe': '100k',
      'username': 'Pièrre',
      'userImageUrl': [AppAssets.imagesProfil5],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.7,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: myData.length,
              itemBuilder: (context, index) {
                var data = myData[index];
                return ImageCard(
                  username: data['username'],
                  userImageUrl: data['userImageUrl'],
                  isSubcribe: data['isSubcribe'],
                  subcribe: data['subcribe'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
