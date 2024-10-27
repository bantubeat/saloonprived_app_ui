import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/primary_button.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class BioTab extends StatelessWidget {
  const BioTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.myGray,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: LocaleKeys
                    .edit_user_profile_personal_info_screen_add_bio
                    .tr(),
                hintStyle: GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                      color: AppColors.myGray600,
                    ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
              ),
              minLines: 5,
              maxLines: null,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            LocaleKeys.edit_user_profile_personal_info_screen_note.tr(),
          ),
          const SizedBox(
            height: 70,
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
                      .edit_user_profile_personal_info_screen_validate_button
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
