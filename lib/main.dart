import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami2/ui/providers/language_providers.dart';
import 'package:islami2/ui/screens/ahadeth_details/ahadeth_details.dart';
import 'package:islami2/ui/screens/home/home.dart';
import 'package:islami2/ui/screens/splash/splash_screen.dart';
import 'package:islami2/ui/screens/sura_details/sura_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => LanguageProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    LanguageProvider provider = Provider.of(context);

    return MaterialApp(
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
      locale: Locale(provider.selectedLanguage),
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
