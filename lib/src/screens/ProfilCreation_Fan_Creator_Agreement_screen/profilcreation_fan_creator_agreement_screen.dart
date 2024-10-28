import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_button.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class ProfilCreationFanCreatorAgreementScreen extends StatelessWidget {
  const ProfilCreationFanCreatorAgreementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                padding: const EdgeInsets.only(bottom: 70),
                child: Scrollbar(
                  interactive: true,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          child: Text(
                            LocaleKeys.general_condition_welcome.tr(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys.general_condition_condition_0.tr(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Align(
                          child: Text(
                            LocaleKeys
                                .general_condition_general_condition_creator_fan_title
                                .tr(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_creator_fan_condition_1
                              .tr(),
                          style: const TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_creator_fan_condition_2
                              .tr(),
                          style: const TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_creator_fan_condition_3
                              .tr(),
                          style: const TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_creator_fan_condition_4
                              .tr(),
                          style: const TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_creator_fan_condition_5
                              .tr(),
                          style: const TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_creator_fan_condition_6
                              .tr(),
                          style: const TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_creator_fan_condition_7
                              .tr(),
                          style: const TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_creator_fan_condition_8
                              .tr(),
                          style: const TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_creator_fan_condition_9
                              .tr(),
                          style: const TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_creator_fan_condition_10
                              .tr(),
                          style: const TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_creator_fan_condition_11
                              .tr(),
                          style: const TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_creator_fan_condition_12
                              .tr(),
                          style: const TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          // Mettez à jour l'état ici
                          isChecked = value ?? false;
                        },
                      ),
                      Text(
                        LocaleKeys
                            .general_condition_general_condition_creator_fan_approv
                            .tr(),
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButton(
                        size: Size(MediaQuery.of(context).size.width / 3, 30),
                        backgroundColor: AppColors.myBlueGray,
                        label: LocaleKeys
                            .general_condition_general_condition_saloonprived_bouton_prev
                            .tr(),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      MyButton(
                        size: Size(MediaQuery.of(context).size.width / 3, 30),
                        label: LocaleKeys
                            .general_condition_general_condition_saloonprived_bouton_next
                            .tr(),
                        onPressed: () {
                          // Ajoutez ici la logique pour le bouton suivant
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
