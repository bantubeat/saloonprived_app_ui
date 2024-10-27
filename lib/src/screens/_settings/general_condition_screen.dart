import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';

class GeneralConditionScreen extends StatelessWidget {
  const GeneralConditionScreen({super.key});
  static ScrollController controler =
      ScrollController(initialScrollOffset: 1.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          LocaleKeys.general_condition_screen_title.tr(),
          style: GoogleFonts.inter(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          size: 16,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ScrollbarTheme(
                data: ScrollbarThemeData(
                  thumbColor: WidgetStateProperty.all(
                    const Color.fromRGBO(249, 191, 13, 0.46),
                  ),
                  trackColor: WidgetStateProperty.all(
                    const Color.fromRGBO(249, 191, 13, 0.15),
                  ),
                  thickness: WidgetStateProperty.all(8),
                  radius: const Radius.circular(
                    5,
                  ),
                  mainAxisMargin: 19,
                ),
                child: Scrollbar(
                  thumbVisibility: true,
                  trackVisibility: true,
                  interactive: true,
                  controller: controler,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    controller: controler,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LocaleKeys.general_condition_screen_last_update
                              .tr(args: ['01/01/2023']),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_table_of_content_title
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_table_of_content_content_1
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_table_of_content_content_2
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_table_of_content_content_3
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_table_of_content_content_4
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_title
                              .tr()
                              .toUpperCase(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_prevention
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_1
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_2
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_3
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_4
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_5
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_6
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_7
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_8
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_9
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_saloonprived_content_1_condition_condition_10
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_fan_title
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_fan_prevention
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_fan_condition_condition_1
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_fan_condition_condition_2
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_fan_condition_condition_3
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_fan_condition_condition_4
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_fan_condition_condition_5
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_fan_condition_condition_6
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_creator_title
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_creator_prevention
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_creator_condition_condition_1
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_creator_condition_condition_2
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_creator_condition_condition_11
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_title
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_prevention
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_1
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_2
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_3
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_4
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_5
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_6
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_7
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_8
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_9
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_10
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_11
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_12
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_13
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_14
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_15
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_16
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_17
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_18
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_19
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_20
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_21
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys
                              .general_condition_general_condition_saloonprived_general_condition_drivingrule_condition_rule_22
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
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
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 15,
            ),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(243, 244, 246, 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Action pour ajouter
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(249, 191, 13, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 35,
                      vertical: 17,
                    ),
                  ),
                  child: Text(
                    LocaleKeys.general_condition_screen_next.tr(),
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
