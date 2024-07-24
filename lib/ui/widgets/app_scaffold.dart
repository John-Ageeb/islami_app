import 'package:flutter/material.dart';

import '../utilities/app_assets.dart';
import '../utilities/app_colors.dart';

class AppScaffold extends StatelessWidget {
  Widget? body;
  String? appBarTitel;
  Widget? bottonNavigationBar;

  AppScaffold({this.body, this.appBarTitel, this.bottonNavigationBar});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.background))),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: buildAppBar(),
        bottomNavigationBar: bottonNavigationBar,
        body: body,
      ),
    );
    ;
  }
  AppBar buildAppBar() => AppBar(
        title: Text(
          appBarTitel ?? "",
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
