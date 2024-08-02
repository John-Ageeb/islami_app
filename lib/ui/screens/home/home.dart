import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami2/ui/screens/home/tabs/ahadeth/ahadeth.dart';
import 'package:islami2/ui/screens/home/tabs/myradio/myradio.dart';
import 'package:islami2/ui/screens/home/tabs/quran/quran.dart';
import 'package:islami2/ui/screens/home/tabs/sebha/sebha.dart';
import 'package:islami2/ui/screens/home/tabs/setting/setting.dart';
import 'package:islami2/ui/utilities/app_assets.dart';
import 'package:islami2/ui/utilities/extensions.dart';
import 'package:islami2/ui/widgets/app_scaffold.dart';

import '../../utilities/app_colors.dart';

class Home extends StatefulWidget {
  static String routename = "home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTabIndix = 3;
  List<Widget> tabs = [Quran(), Ahadeth(), MyRadio(), Sebha(), Setting()];

  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitel: context.localization.islami,
      body: tabs[selectedTabIndix],
      bottonNavigationBar: buildButtonNavigtion(),
    );
  }

  Theme buildButtonNavigtion() {
    return Theme(
      data: ThemeData(canvasColor: AppColors.primary),
      child: BottomNavigationBar(
        selectedItemColor: AppColors.accent,
        selectedIconTheme: IconThemeData(size: 36),
        currentIndex: selectedTabIndix,
        onTap: (index) {
          selectedTabIndix = index;

          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAssets.icQuran)), label: "Quran"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAssets.icAhdath)),
              label: "Ahadeth"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAssets.icRadio)), label: "Radio"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAssets.icSebha)), label: "Sebha"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: AppLocalizations.of(context)!.setting),
        ],
      ),
    );
  }
}
