import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class ShareBottomSheetContent extends StatefulWidget {
  @override
  State<ShareBottomSheetContent> createState() =>
      _ShareBottomSheetContentState();
}

class _ShareBottomSheetContentState extends State<ShareBottomSheetContent> {
  double _bottomSheetHeightPercentage = 0.30; // Start with 25%
  bool isUser = false;

  void _toggleBottomSheetSize() {
    setState(() {
      // Toggle between 25% and 80%
      _bottomSheetHeightPercentage =
          _bottomSheetHeightPercentage == 0.30 ? 0.8 : 0.30;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: _bottomSheetHeightPercentage,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20), // Rounded top left corner
          topRight: Radius.circular(20), // Rounded top right corner
        ),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.close,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Color.fromRGBO(235, 235, 235, 1),
              ),
              Expanded(
                child: _bottomSheetHeightPercentage == 0.30
                    ? _buildGridViewWithIcons(context, 5) // 5 items per row
                    : _buildColumnWithIcons(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Display icons in grid with 5 items per row
  Widget _buildGridViewWithIcons(BuildContext context, int crossAxisCount) {
    final data = isUser ? userMediaItems : visitorMediaItems;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount, // Number of icons per row
      ),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return _buildIconText(
          data[index].icon,
          data[index].name,
          data[index].color,
          data[index].backgroundColor,
          data[index].gradient,
          data[index].rotate,
          data[index].image,
        );
      },
    );
  }

  // Display icons in column with their names
  Widget _buildColumnWithIcons(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      itemCount: socialMediaItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 4,
          ),
          leading: _buildIcon(
            socialMediaItems[index].icon,
            socialMediaItems[index].color,
            socialMediaItems[index].backgroundColor,
            socialMediaItems[index].gradient,
            socialMediaItems[index].rotate,
            socialMediaItems[index].image,
          ),
          title: Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
              left: 10.0,
            ),
            child: Text(
              socialMediaItems[index].isLink != null
                  ? socialMediaItems[index].name
                  : LocaleKeys.share_bottom_sheet_content_share_whit.tr(
                      args: [
                        socialMediaItems[index].name,
                      ],
                    ),
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
      },
    );
  }

  // Function to build each icon
  Widget _buildIcon(
    IconData icon,
    Color color,
    Color background,
    Gradient? gradient,
    double? rotate,
    Image? image,
  ) {
    return InkWell(
      onTap: () {
        _toggleBottomSheetSize();
      },
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: gradient != null ? null : background,
          gradient: gradient,
        ),
        child: image ??
            Transform.rotate(
              angle: rotate ?? 0,
              child: Icon(
                icon,
                size: 30,
                color: color,
              ),
            ),
      ),
    );
  }

  Widget _buildIconText(
    IconData icon,
    String name,
    Color color,
    Color background,
    Gradient? gradient,
    double? rotate,
    Image? image,
  ) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            _toggleBottomSheetSize();
          },
          child: Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: gradient != null ? null : background,
              gradient: gradient,
            ),
            child: image ??
                Transform.rotate(
                  angle: rotate ?? 0,
                  child: Icon(
                    icon,
                    size: 30,
                    color: color,
                  ),
                ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: GoogleFonts.inter(
            color: Colors.black,
            fontSize: 8,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  List<LineItem> socialMediaItems = [
    LineItem(
      name: 'Facebook',
      icon: FontAwesome.facebook,
      backgroundColor: const Color.fromRGBO(18, 35, 188, 1),
      color: Colors.white,
    ),
    LineItem(
      name: 'WhatsApp',
      icon: FontAwesome.whatsapp,
      backgroundColor: const Color.fromRGBO(101, 208, 114, 1),
      color: Colors.white,
    ),
    LineItem(
      name: 'Telegram',
      icon: FontAwesome.send,
      rotate: -0.10,
      backgroundColor: Colors.blue,
      color: Colors.white,
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFF2AABEE), // #2AABEE
          Color(0xFF229ED9), // #229ED9
        ],
        stops: [0.0, 0.9926], // Correspond à 0% et 99.26%
      ),
    ),
    LineItem(
      name: 'Snapchat',
      icon: FontAwesome.snapchat,
      backgroundColor: const Color.fromRGBO(255, 252, 0, 1),
      color: Colors.black,
    ),
    LineItem(
      name: 'Instagram',
      icon: FontAwesome.instagram,
      backgroundColor: Colors.purple,
      color: Colors.white,
      gradient: const RadialGradient(
        center: Alignment(0.3061, 0.9796), // Correspond à 30.61% et 97.96%
        radius: 0.949, // Correspond à 94.9%
        colors: [
          Color(0xFFFFDD55), // #FFDD55
          Color(0xFFFFDD55), // #FFDD55
          Color(0xFFFF543E), // #FF543E
          Color(0xFFC837AB), // #C837AB
        ],
        stops: [0.0, 0.1, 0.5, 1.0], // Positions des couleurs
      ),
    ),
    LineItem(
      name: 'Reddit',
      icon: FontAwesome.reddit,
      backgroundColor: const Color.fromRGBO(255, 69, 0, 1),
      color: Colors.white,
    ),
    LineItem(
      name: 'LinkedIn',
      icon: FontAwesome.linkedin,
      backgroundColor: const Color.fromRGBO(10, 102, 194, 1),
      color: Colors.white,
    ),
    LineItem(
      name: 'X ',
      icon: Octicons.x, // Remplacement temporaire pour X
      backgroundColor: Colors.black,
      color: Colors.white,
      image: Image.asset(
        AppAssets.imagesXLogo,
        width: 32,
        height: 32,
      ),
    ),
    // LineItem(
    //   name: 'TikTok',
    //   icon: FontAwesome.music,
    //   backgroundColor: Colors.black,
    //   color: Colors.white,
    // ),
    LineItem(
      name: LocaleKeys.share_bottom_sheet_content_copy_link_text.tr(),
      icon: FontAwesome.copy,
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
      color: Colors.black,
      isLink: true,
    ),
  ];

  List<LineItem> visitorMediaItems = [
    LineItem(
      name: 'Facebook',
      icon: FontAwesome.facebook,
      backgroundColor: const Color.fromRGBO(18, 35, 188, 1),
      color: Colors.white,
    ),
    LineItem(
      name: 'WhatsApp',
      icon: FontAwesome.whatsapp,
      backgroundColor: const Color.fromRGBO(101, 208, 114, 1),
      color: Colors.white,
    ),
    LineItem(
      name: 'X ',
      icon: Octicons.x, // Remplacement temporaire pour X
      backgroundColor: Colors.black,
      color: Colors.white,
      image: Image.asset(
        AppAssets.imagesXLogo,
        width: 32,
        height: 32,
      ),
    ),
    LineItem(
      name: 'Telegram',
      icon: FontAwesome.send,
      rotate: -0.15,
      backgroundColor: Colors.blue,
      color: Colors.white,
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFF2AABEE), // #2AABEE
          Color(0xFF229ED9), // #229ED9
        ],
        stops: [0.0, 0.9926], // Correspond à 0% et 99.26%
      ),
    ),
    LineItem(
      name: LocaleKeys.share_bottom_sheet_content_more.tr(),
      icon: Icons.more_horiz_sharp,
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
      color: const Color.fromRGBO(38, 37, 37, 1),
    ),
    LineItem(
      name: LocaleKeys.share_bottom_sheet_content_report_text.tr(),

      icon: FontAwesome.exclamation, // Point d'exclamation pour signaler
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
      color: const Color.fromRGBO(38, 37, 37, 1),
    ),
    LineItem(
      name: LocaleKeys.share_bottom_sheet_content_download.tr(),
      icon: FontAwesome.download,
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
      color: const Color.fromRGBO(38, 37, 37, 1),
    ),
    LineItem(
      name: LocaleKeys.share_bottom_sheet_content_copy_link_text.tr(),
      icon: FontAwesome.copy,
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
      color: const Color.fromRGBO(38, 37, 37, 1),
    ),
  ];
  List<LineItem> userMediaItems = [
    LineItem(
      name: 'Facebook',
      icon: FontAwesome.facebook,
      backgroundColor: const Color.fromRGBO(18, 35, 188, 1),
      color: Colors.white,
    ),
    LineItem(
      name: 'WhatsApp',
      icon: FontAwesome.whatsapp,
      backgroundColor: const Color.fromRGBO(101, 208, 114, 1),
      color: Colors.white,
    ),
    LineItem(
      name: 'X ',
      icon: Octicons.x, // Remplacement temporaire pour X
      backgroundColor: Colors.black,
      color: Colors.white,
      image: Image.asset(
        AppAssets.imagesXLogo,
        width: 32,
        height: 32,
      ),
    ),
    LineItem(
      name: 'Snapchat',
      icon: FontAwesome.snapchat,
      backgroundColor: const Color.fromRGBO(255, 252, 0, 1),
      color: Colors.black,
    ),
    LineItem(
      name: LocaleKeys.share_bottom_sheet_content_more.tr(),
      icon: Icons.more_horiz_sharp,
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
      color: const Color.fromRGBO(38, 37, 37, 1),
    ),
    LineItem(
      name: LocaleKeys.share_bottom_sheet_content_delete.tr(),

      icon: FontAwesome.trash, // Icône de poubelle pour supprimer
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
      color: const Color.fromRGBO(38, 37, 37, 1),
    ),
    LineItem(
      name: LocaleKeys.share_bottom_sheet_content_pin.tr(),
      rotate: -0.5,
      icon: FontAwesome.thumb_tack, // Icône d'épingle remplacée
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
      color: const Color.fromRGBO(38, 37, 37, 1),
    ),
    LineItem(
      name: LocaleKeys.share_bottom_sheet_content_copy_link_text.tr(),
      icon: FontAwesome.copy,
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
      color: const Color.fromRGBO(38, 37, 37, 1),
    ),
    LineItem(
      name: LocaleKeys.share_bottom_sheet_content_download.tr(),
      icon: FontAwesome.download,
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
      color: const Color.fromRGBO(38, 37, 37, 1),
    ),
  ];
}

class LineItem {
  String name;
  IconData icon;
  Color backgroundColor;
  Color color;
  Gradient? gradient;
  Image? image;
  double? rotate;
  bool? isLink;

  LineItem({
    required this.name,
    required this.icon,
    required this.color,
    required this.backgroundColor,
    this.gradient,
    this.rotate,
    this.image,
    this.isLink,
  });
}



  // static void showCustomBottomSheet(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     builder: (context) => ShareBottomSheetContent(),
  //   );
  // }