import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';

class MessagesItem extends StatelessWidget {
  const MessagesItem({
    required this.discussion,
    super.key,
  });

  final Map<String, dynamic> discussion;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          Row(
            children: [
              if (discussion['isSelect']!)
                Container(
                  width: 13,
                  height: 80,
                  decoration: const BoxDecoration(color: AppColors.primary),
                ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                margin: const EdgeInsets.only(
                  left: 30,
                ),
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(discussion['avatar']!),
                      radius: 27,
                    ),
                    if (discussion['isOnline']!)
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color: discussion['isRead']!
                                ? Colors.white
                                : AppColors.primary,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.primary,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      discussion['name']!,
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(24, 24, 24, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    if (!discussion['isSent']!)
                      Text(
                        discussion['messagePreview']!,
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(24, 24, 24, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    if (discussion['isSent']!)
                      Wrap(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(discussion['avatar']!),
                            radius: 7,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            discussion['messagePreview']!,
                            style: GoogleFonts.inter(
                              color: const Color.fromRGBO(24, 24, 24, 0.2),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
          if (discussion['isSelect']!)
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.005),
              ),
            ),
        ],
      ),
    );
  }
}
