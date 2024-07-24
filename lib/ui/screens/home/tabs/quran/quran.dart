import 'package:flutter/material.dart';
import 'package:islami2/datamodel/sura_details_args.dart';
import 'package:islami2/ui/screens/sura_details/sura_details.dart';
import 'package:islami2/ui/utilities/app_assets.dart';
import 'package:islami2/ui/utilities/app_colors.dart';

import '../../../../utilities/constant/constant.dart';

class Quran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildHeadrImage(),
        Expanded(
          flex: 7,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Column(
                children: [
                  buildDivider(),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Soura Name",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: AppColors.accent),
                        ),
                      ),
                      Expanded(
                          child: Text(
                        "Verses Number",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: AppColors.accent),
                      )),
                    ],
                  ),
                  buildDivider(),
                  buildSourasList(),
                ],
              ),
              VerticalDivider(
                color: AppColors.primary,
                thickness: 3,
                indent: 7,
              )
            ],
          ),
        )
      ],
    );
  }

  Expanded buildSourasList() {
    return Expanded(
        flex: 7,
        child: ListView.builder(
          itemCount: Constants.suraNames.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, SuraDetails.routeName,
                    arguments: SuraDetailsArgs(
                        suraName: Constants.suraNames[index],
                        filename: "${index + 1}.txt"));
              },
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      Constants.suraNames[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: AppColors.accent),
                    ),
                  ),
                  Expanded(
                      child: Text(
                    Constants.versesNumber[index].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: AppColors.accent),
                  )),
                ],
              ),
            );
          },
        ));
  }

  Divider buildDivider() => Divider(
        color: AppColors.primary,
        thickness: 3,
      );

  Expanded buildHeadrImage() {
    return Expanded(
      flex: 3,
      child: Image.asset(AppAssets.quranTabLogo),
    );
  }
}
