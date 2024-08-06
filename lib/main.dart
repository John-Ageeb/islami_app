import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami2/ui/providers/language_providers.dart';
import 'package:islami2/ui/providers/theme_provider.dart';
import 'package:islami2/ui/screens/ahadeth_details/ahadeth_details.dart';
import 'package:islami2/ui/screens/home/home.dart';
import 'package:islami2/ui/screens/splash/splash_screen.dart';
import 'package:islami2/ui/screens/sura_details/sura_details.dart';
import 'package:islami2/ui/utilities/app_theme.dart';
import 'package:provider/provider.dart';

/// if we need to add a multi provider, we can add ChangeNotifierProvider inside ChangeNotifierProvider.

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: ChangeNotifierProvider(
        create: (context) => LanguageProvider(), child: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    LanguageProvider LangProvider = Provider.of(context);
    ThemeProvider ThemProvider = Provider.of(context);

    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemProvider.currantTheme,
      // working theme

      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), //
      ],
      locale: Locale(LangProvider.selectedLanguage),
      // defult

      routes: {
        Splash.routename: (context) => Splash(),
        Home.routename: (context) => Home(),
        SuraDetails.routeName: (context) => SuraDetails(),
        AhadethDetails.routeName: (context) => AhadethDetails(),
      },
      initialRoute: Splash.routename,
    );
  }
}
