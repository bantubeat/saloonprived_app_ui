import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/primary_button.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

import 'label_text_form_field.dart';

class SocialNetworkTab extends StatelessWidget {
  const SocialNetworkTab({
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
                      .edit_user_profile_personal_info_screen_facebook
                      .tr(),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: LabelTextFormField(
                  label: LocaleKeys
                      .edit_user_profile_personal_info_screen_twitter
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
                      .edit_user_profile_personal_info_screen_instagram
                      .tr(),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: LabelTextFormField(
                  label: LocaleKeys
                      .edit_user_profile_personal_info_screen_tiktok
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
                      .edit_user_profile_personal_info_screen_bantubeat
                      .tr(),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: LabelTextFormField(
                  label: LocaleKeys
                      .edit_user_profile_personal_info_screen_thread
                      .tr(),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  text: LocaleKeys
                      .edit_user_profile_personal_info_screen_cancel_button
                      .tr(),
                  onPressed: (_) {},
                  backgroundColor: AppColors.myDark,
                  color: AppColors.myWhite,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: PrimaryButton(
                  text: LocaleKeys
                      .edit_user_profile_personal_info_screen_save_changes
                      .tr(),
                  onPressed: (_) {},
                  color: AppColors.myWhite,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
