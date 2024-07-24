import 'package:flutter/material.dart';

import '../utilities/app_assets.dart';
import '../utilities/app_colors.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.background))),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: buildAppBar(),
        bottomNavigationBar: buildButtonNavigtion(),
        body: tabs[selectedTabIndix],
      ),
    );
    ;
  }

  AppBar buildAppBar() => AppBar(
        title: Text(
          "Islami",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: AppColors.accent),
        ),
        centerTitle: true,
        backgroundColor: AppColors.transparent,
        elevation: 0,
      );
}
