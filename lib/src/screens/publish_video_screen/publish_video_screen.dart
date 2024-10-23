import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/components/custom_switch.dart';
import 'package:saloonprived_app/src/components/input_text_field.dart';
import 'package:saloonprived_app/src/components/primary_button.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class PublishVideoScreen extends StatelessWidget {
  const PublishVideoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> imageUrls = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzyalm8QeCcnsGHpM6JjHwyTOI_wvHE5y4Cg&s',
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          LocaleKeys.publish_video_photo_screen_video_title.tr(),
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            color: AppColors.myGray,
            height: 1.5,
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 14.0,
                        horizontal: 20,
                      ),
                      child: InputTextField(
                        color: AppColors.myGray,
                        expands: true,
                        borderColor: AppColors.myGray,
                        hintText: LocaleKeys
                            .publish_video_photo_screen_video_description_hint
                            .tr(),
                        height: 130,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        child: ListView.builder(
                          itemCount: imageUrls.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              width: 100,
                              child: Image.network(
                                imageUrls[index],
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return const SizedBox();
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                        color: AppColors.myGray,
                        height: 1.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LocaleKeys.publish_video_photo_screen_destination
                                .tr(),
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold,),
                          ),
                          Text(
                            LocaleKeys
                                .publish_video_photo_screen_destination_hint
                                .tr(),
                            style: const TextStyle(
                                fontSize: 14, color: Colors.grey,),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                LocaleKeys.publish_video_photo_screen_free.tr(),
                              ),
                              CustomSwitch(
                                height: 14,
                                width: 30,
                                value: true,
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(LocaleKeys.publish_video_photo_screen_paid
                                  .tr(),),
                              const Icon(
                                Icons.lock_outlined,
                                color: AppColors.primary,
                                size: 16,
                              ),
                              const Spacer(),
                              CustomSwitch(
                                height: 14,
                                width: 30,
                                value: false,
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                        color: Colors.grey,
                        height: 1.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.chat_outlined),
                          Text(LocaleKeys.publish_video_photo_screen_comment
                              .tr(),),
                          const Spacer(),
                          CustomSwitch(
                            height: 14,
                            width: 30,
                            value: true,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LocaleKeys
                                .publish_video_photo_screen_copyright_title
                                .tr(),
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold,),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            LocaleKeys
                                .publish_video_photo_screen_copyright_description
                                .tr(),
                            style: const TextStyle(
                                fontSize: 14, color: Colors.grey,),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              foregroundColor: AppColors.myDark,
                            ),
                            onPressed: () {},
                            child: Text(
                              LocaleKeys.publish_video_photo_screen_text_button
                                  .tr(),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: const BoxDecoration(
                  color: AppColors.myGray,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: PrimaryButton(
                    fixedSize: Size(MediaQuery.of(context).size.width / 3, 30),
                    onPressed: (context) {},
                    text: LocaleKeys.publish_video_photo_screen_publish.tr(),
                  ),
                ),
              ),
            )
          ,],
        ),
      ),
    );
  }
}
