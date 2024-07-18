import 'package:flutter/material.dart';
import 'package:islami2/ui/screens/home/home.dart';
import 'package:islami2/ui/utilities/app_assets.dart';

class Splash extends StatefulWidget {
  static String routename = "splash_screen";

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    // TODO: implement initState
    super.initState(); // called only one time before everything
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, Home.routename);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(AppAssets.splash),
    );
  }
}
