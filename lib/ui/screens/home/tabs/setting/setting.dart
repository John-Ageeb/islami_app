import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami2/ui/providers/language_providers.dart';
import 'package:islami2/ui/providers/theme_provider.dart';
import 'package:provider/provider.dart';

import '../../../../utilities/app_colors.dart';

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool isDarkThemeEnabled = false;
  late LanguageProvider langProvider;
  late ThemeProvider themProvider;
  @override
  Widget build(BuildContext context) {
    langProvider = Provider.of(context);
    themProvider = Provider.of(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: AppColors.accent)),
          buildLanguageMenu(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.theme,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: AppColors.accent),
              ),
              Spacer(),
              buildThemeSwitch(),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLanguageMenu() => DropdownButton(
        value: langProvider.selectedLanguage, // defult value
        isExpanded: true,
        items: [
          DropdownMenuItem<String>(value: "ar", child: Text("العربية")),
          // value mean ID for this selection
          DropdownMenuItem<String>(value: "en", child: Text("English")),
        ],
        onChanged: (newValue) {
          langProvider.selectedLanguage =
              newValue ?? langProvider.selectedLanguage;
          langProvider
              .notifyListeners(); // any one notifiy provider will be rebuild
          setState(() {});
        },
      );

  Widget buildThemeSwitch() => Switch(
      activeColor: AppColors.primary,
      value: themProvider.isDarkThemeEnabled,
      onChanged: (newValue) {
        themProvider.newTheme = newValue ? ThemeMode.dark : ThemeMode.light;
        setState(() {});
      });
}
