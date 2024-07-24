import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami2/datamodel/sura_details_args.dart';
import 'package:islami2/ui/utilities/app_colors.dart';
import 'package:islami2/ui/widgets/app_scaffold.dart';

class SuraDetails extends StatefulWidget {
  static String routeName = "sura_details";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  late SuraDetailsArgs args;

  String fileContant = "";

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if (fileContant.isEmpty) {
      readfile();
    }
    return AppScaffold(
      appBarTitel: args.suraName,
      body: fileContant.isEmpty
          ? Center(
              child: CircularProgressIndicator(
              color: AppColors.primary,
            ))
          : buildSuraContant(),
    );
  }

  Widget buildSuraContant() {
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
            fileContant,
            textDirection: TextDirection.rtl,
            style: TextStyle(fontSize: 18),
          ))),
    );
  }

  Future readfile() async {
    fileContant =
        await rootBundle.loadString("assets/files/quran/${args.filename}");
    List<String> fileLines = fileContant.split("\n");
    for (int i = 0; i < fileLines.length; i++) {
      fileLines[i] += "(${i + 1})";
    }
    fileContant = fileLines.join();

    print("filecontant = $fileContant");
    setState(() {});
  }
}
