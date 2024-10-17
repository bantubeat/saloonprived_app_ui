import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:saloonprived_app/src/screens/adult_warning/adult_warning_screen.dart';
import 'package:url_strategy/url_strategy.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) setPathUrlStrategy();

  const supportedLocales = [Locale('fr')];

  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      path: 'assets/i18n',
      saveLocale: false,
      useOnlyLangCode: true,
      useFallbackTranslations: true,
      supportedLocales: supportedLocales,
      fallbackLocale: supportedLocales.first,
      child: const AttentionPageScreen(),
    ),
  );
}
