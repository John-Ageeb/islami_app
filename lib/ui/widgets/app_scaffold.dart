import 'package:flutter/material.dart';
import 'package:islami2/ui/providers/theme_provider.dart';
import 'package:provider/provider.dart';

import '../utilities/app_colors.dart';

class AppScaffold extends StatelessWidget {
  Widget? body;
  String? appBarTitel;
  Widget? bottonNavigationBar;

  AppScaffold({this.body, this.appBarTitel, this.bottonNavigationBar});

  late ThemeProvider themeProvider;

  @override
  Widget build(BuildContext context) {
    themeProvider = Provider.of(context);
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(themeProvider.mainBackground))),
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
        ),
      );
}
