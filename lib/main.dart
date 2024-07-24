import 'package:flutter/material.dart';
import 'package:islami2/ui/screens/home/home.dart';
import 'package:islami2/ui/screens/splash/splash_screen.dart';
import 'package:islami2/ui/screens/sura_details/sura_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Splash.routename: (context) => Splash(),
        Home.routename: (context) => Home(),
        SuraDetails.routeName: (context) => SuraDetails(),
      },
      initialRoute: Splash.routename,
    );
  }
}
