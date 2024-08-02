import 'package:flutter/material.dart';
import 'package:islami2/ui/utilities/app_assets.dart';
import 'package:islami2/ui/utilities/app_colors.dart';

class Sebha extends StatelessWidget {
  const Sebha({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.sebhaHead),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.sebhaBody),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Tasbeh Number",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "N",
            style: TextStyle(fontSize: 20, color: AppColors.accent),
          ),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 30),

            primary: AppColors.primary, // Background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), // Rounded corners
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.primary, // Background color of the box
              borderRadius: BorderRadius.circular(25), // Rounded corners
            ),
            child: Text(
              "Tasbeh Number",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                  color: AppColors.white),
              textAlign: TextAlign.center,
            )),
        Spacer(flex: 1),
      ],
    );
  }
}
