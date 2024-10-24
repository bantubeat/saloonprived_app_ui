import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/my_button.dart';
import 'package:saloonprived_app/src/screens/profilcreation_fan_creator_agreements_screen/profilcreation_fan_creator_agreements_screen.dart';

class ProfilcreationGeneralconditionScreen extends StatelessWidget {
  const ProfilcreationGeneralconditionScreen({super.key});

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
                padding: const EdgeInsets.only(bottom: 80),
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
                                .general_condition_general_condition_saloonprived_table_of_content_title
                                .tr(),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_table_of_content_content_1
                              .tr(),
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_table_of_content_content_2
                              .tr(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_table_of_content_content_3
                              .tr(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_table_of_content_content_4
                              .tr(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            LocaleKeys
                                .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_title
                                .tr(),
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_prevention
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
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_1
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
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_2
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
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_3
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
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_4
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
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_5
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
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_6
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
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_7
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
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_8
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
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_9
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
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_10
                              .tr(),
                          style: const TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            LocaleKeys
                                .general_condition_general_condition_saloonprived_general_condition_fan_title
                                .tr(),
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_fan_prevention
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
                              .general_condition_general_condition_saloonprived_general_condition_fan_condition_condition_1
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
                              .general_condition_general_condition_saloonprived_general_condition_fan_condition_condition_2
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
                              .general_condition_general_condition_saloonprived_general_condition_fan_condition_condition_3
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
                              .general_condition_general_condition_saloonprived_general_condition_fan_condition_condition_4
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
                              .general_condition_general_condition_saloonprived_general_condition_fan_condition_condition_5
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
                              .general_condition_general_condition_saloonprived_general_condition_fan_condition_condition_6
                              .tr(),
                          style: const TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            LocaleKeys
                                .general_condition_general_condition_saloonprived_general_condition_creator_title
                                .tr(),
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_creator_prevention
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
                              .general_condition_general_condition_saloonprived_general_condition_creator_condition_condition_1
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
                              .general_condition_general_condition_saloonprived_general_condition_creator_condition_condition_2
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
                              .general_condition_general_condition_saloonprived_general_condition_creator_condition_condition_11
                              .tr(),
                          style: const TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          child: Text(
                            LocaleKeys
                                .general_condition_general_condition_saloonprived_general_condition_drivingrule_title
                                .tr(),
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_prevention
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_1
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_2
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_3
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_4
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_5
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_6
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_7
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_8
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_9
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_10
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_11
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_12
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_13
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_14
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_15
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_16
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_17
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_18
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_19
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_20
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_21
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
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_22
                              .tr(),
                          style: const TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
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
                      Flexible(
                        child: Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_approve
                              .tr(),
                          style: const TextStyle(fontSize: 12),
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MyButton(
                        size: Size(MediaQuery.of(context).size.width / 3, 30),
                        label: LocaleKeys
                            .general_condition_general_condition_saloonprived_bouton_next
                            .tr(),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ProfilCreationFanCreatorAgreementScreen(),
                            ),
                          );
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
