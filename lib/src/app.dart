import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'config/app_themes.dart';

/// The Widget that configures your application.
class SaloonprivedApp extends StatelessWidget {
  const SaloonprivedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'app',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onGenerateTitle: (_) => LocaleKeys.app_title.tr(),
      themeMode: ThemeMode.light,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      // Remplace `WelcomeScreen` par ta SCREEN pour la tester et à la fin remet
      // `WelcomeScreen` comme tu vois.
      home: const WelcomeScreen(),
    );
  }
}
