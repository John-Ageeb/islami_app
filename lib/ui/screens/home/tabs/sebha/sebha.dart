import 'package:flutter/material.dart';
import 'package:islami2/ui/utilities/app_assets.dart';
import 'package:islami2/ui/utilities/app_colors.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int count = 0;
  List<String> Zekrdata = [
    "سبحان الله",
    "2سبحان الله",
    "3سبحان الله",
    "4سبحان الله",
    "سبحان الله5",
    "6سبحان الله"
  ];
  int ZekrIndex = 0;
  double rotationAngle = 0.0;

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
          GestureDetector(
            onTap: () {
              onClick();
            },
            child: Transform.rotate(
              angle: rotationAngle, // Apply the rotation angle
              child: Image.asset(
                AppAssets.sebhaBody, // Replace with your image asset path
                // width: 200,
                // height: 200,
              ),
            ),
          ),
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
          "$count",
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
            Zekrdata[ZekrIndex],
            style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                  color: AppColors.white),
              textAlign: TextAlign.center,
            )),
        Spacer(flex: 1),
    ]);
  }

  void onClick() {
    setState(() {
      count++;
      if (count <= 198) {
        checkCounter(count);
      } else if (count > 198) {
        int rCount = count - 198;
        checkCounter(rCount);
      }
      rotationAngle += 10; // Rotate 45 degrees (pi/4 radians) on each click
    });
  }

//

  void checkCounter(int count) {
    switch (count) {
      case <= 33:
        ZekrIndex = 0;
      case <= 66 && > 33:
        ZekrIndex = 1;
      case <= 99 && > 66:
        ZekrIndex = 2;
      case <= 132 && > 99:
        ZekrIndex = 3;
      case <= 165 && > 132:
        ZekrIndex = 4;
      case <= 198 && > 165:
        ZekrIndex = 4;
    }
    setState(() {});
  }
}
