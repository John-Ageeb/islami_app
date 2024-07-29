import 'package:flutter/material.dart';

import '../../../../utilities/app_colors.dart';

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  String selectedLanugauge = "en";

  bool isDarkThemeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Language",
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
                "Theme",
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
        value: selectedLanugauge, // defult value
        isExpanded: true,
        items: [
          DropdownMenuItem<String>(value: "ar", child: Text("العربية")),
          // value mean ID for this selection
          DropdownMenuItem<String>(value: "en", child: Text("English")),
        ],
        onChanged: (newValue) {
          selectedLanugauge = newValue ?? selectedLanugauge;
          setState(() {});
        },
      );

  Widget buildThemeSwitch() => Switch(
      value: isDarkThemeEnabled,
      onChanged: (newValue) {
        isDarkThemeEnabled = newValue;
        setState(() {});
      });
}
