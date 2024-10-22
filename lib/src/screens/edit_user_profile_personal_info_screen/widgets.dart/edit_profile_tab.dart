import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

import 'label_text_form_field.dart';

class EditProfileTab extends StatelessWidget {
  const EditProfileTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: LabelTextFormField(
                  label: LocaleKeys
                      .edit_user_profile_personal_info_screen_name_label
                      .tr(),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: LabelTextFormField(
                  label: LocaleKeys
                      .edit_user_profile_personal_info_screen_first_name_label
                      .tr(),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: LabelTextFormField(
                  label: LocaleKeys
                      .edit_user_profile_personal_info_screen_username_label
                      .tr(),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: LabelTextFormField(
                  label: LocaleKeys
                      .edit_user_profile_personal_info_screen_birth_year_label
                      .tr(),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: LabelTextFormField(
                  label: LocaleKeys
                      .edit_user_profile_personal_info_screen_country_label
                      .tr(),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: LabelTextFormField(
                  label: LocaleKeys
                      .edit_user_profile_personal_info_screen_email_label
                      .tr(),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: LabelTextFormField(
                  label: LocaleKeys
                      .edit_user_profile_personal_info_screen_phone_number_label
                      .tr(),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: LabelTextFormField(
                  label: LocaleKeys
                      .edit_user_profile_personal_info_screen_city_label
                      .tr(),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            LocaleKeys.edit_user_profile_personal_info_screen_note.tr(),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              LocaleKeys
                  .edit_user_profile_personal_info_screen_edit_profile_on_bantubeat
                  .tr(),
              style: GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                    color: AppColors.primary,
                  ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
