import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami2/datamodel/sura_details_args.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text("${args.suraName}"),
      ),
      body: Text(fileContant, textDirection: TextDirection.rtl),
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
