import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami2/ui/screens/ahadeth_details/ahadeth_details.dart';

import '../../../../../datamodel/hadeth.dart';
import '../../../../utilities/app_assets.dart';
import '../../../../utilities/app_colors.dart';
import '../../../../utilities/constant/constant.dart';

class Ahadeth extends StatefulWidget {
  @override
  State<Ahadeth> createState() => _AhadethState();
}

class _AhadethState extends State<Ahadeth> {
  List<Hadeth> hadethList = [];

  Widget build(BuildContext context) {
    if (hadethList.isEmpty) {
      readHadethfile();
    }
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
                          "Ahadeth Name",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: AppColors.accent),
                        ),
                      ),
                    ],
                  ),
                  buildDivider(),
                  buildAhadethList(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildAhadethList() => hadethList.isEmpty
      ? CircularProgressIndicator()
      : Expanded(
          flex: 7,
          child: ListView.builder(
            itemCount: hadethList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AhadethDetails.routeName,
                      arguments: hadethList[index]);
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        hadethList[index].hadethTitel,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: AppColors.accent),
                      ),
                    ),
                  ],
                ),
              );
            },
          ));

  Future readHadethfile() async {
    String ahadethFileContant =
        await rootBundle.loadString(Constants.hadethFilePath);
    List<String> ahadethAsStrings = ahadethFileContant.split("#\r\n");

    for (int i = 0; i < ahadethAsStrings.length; i++) {
      String hadeth = ahadethAsStrings[i];
      List<String> hadethLines = hadeth.split("\n");
      // List<String> hadethLines1 = ahadethAsStrings[i].split("\n");

      String hadethName = hadethLines[0];
      hadethLines.removeAt(0);
      String hadethContanat = hadethLines.join();
      hadethList.add(Hadeth(hadethTitel: hadethName, contant: hadethContanat));

      print(ahadethAsStrings[i]);

      print("------------------------------------------------");
    }
    setState(() {});
  }

  Divider buildDivider() => Divider(
        color: AppColors.primary,
        thickness: 3,
      );

  Expanded buildHeadrImage() {
    return Expanded(
      flex: 3,
      child: Image.asset(AppAssets.ahadethTabLogo),
    );
  }
}