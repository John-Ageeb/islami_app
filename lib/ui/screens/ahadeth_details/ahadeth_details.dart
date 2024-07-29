import 'package:flutter/material.dart';
import 'package:islami2/datamodel/hadeth.dart';
import 'package:islami2/ui/utilities/app_colors.dart';
import 'package:islami2/ui/widgets/app_scaffold.dart';

class AhadethDetails extends StatefulWidget {
  static String routeName = "ahadeth_details";

  @override
  State<AhadethDetails> createState() => _AhadethDetailsState();
}

class _AhadethDetailsState extends State<AhadethDetails> {
  String fileContant = "";

  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)!.settings.arguments as Hadeth;

    return AppScaffold(
      appBarTitel: args.hadethTitel,
      body: buildHadethContant(args.contant),
    );
  }

  Widget buildHadethContant(String contant) {
    return Center(
      child: Container(
          height: MediaQuery.of(context).size.height * .8,
          width: MediaQuery.of(context).size.width * .8,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: SingleChildScrollView(
              child: Text(
            contant,
            textDirection: TextDirection.rtl,
            style: TextStyle(fontSize: 18),
          ))),
    );
  }
}
