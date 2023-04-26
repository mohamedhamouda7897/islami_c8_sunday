import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c8_sunday/hadeth_model.dart';
import 'package:islami_c8_sunday/hdeth_details.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> AllAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (AllAhadeth.isEmpty) {
      loadHadethFile();
    }

    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/hadeth_bg.png"),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Theme.of(context).primaryColor,
                thickness: 1,
                endIndent: 40,
                indent: 40,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HadethDetails.routeName,
                        arguments: AllAhadeth[index]);
                  },
                  child: Text(
                    AllAhadeth[index].title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.black),
                  ),
                );
              },
              itemCount: AllAhadeth.length,
            ),
          ),
        ],
      ),
    );
  }

  void loadHadethFile() {
    // try {
    //   String HadethFile =
    //       await rootBundle.loadString("assets/files/ahadeth.txt");
    // } catch (error) {
    //   print(error);
    // }

    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      //"Mohamed"
      //"   Mohamed    " .trim() >> "Mohamed"
      List<String> AhadethContent = value.split("#");

      //           0123

      for (int i = 0; i < AhadethContent.length; i++) {
        int LastIndexOfFirstLine = AhadethContent[i].trim().indexOf("\n");
        String title =
            AhadethContent[i].trim().substring(0, LastIndexOfFirstLine);
        print(title);
        String content =
            AhadethContent[i].trim().substring(LastIndexOfFirstLine + 1);
        HadethModel hadethModel = HadethModel(title, content);
        AllAhadeth.add(hadethModel);
      }

      // for (int i = 0; i < AhadethContent.length; i++) {
      //   List<String> HadethLines = AhadethContent[i].trim().split("\n");
      //   String title = HadethLines[0];
      //   HadethLines.removeAt(0);
      //   List<String> content = HadethLines;
      //   print(title);
      //   print(content);
      //   print("-----------------------");
      //   HadethModel hadethModel = HadethModel(title, content);
      //   AllAhadeth.add(hadethModel);
      // }
      setState(() {});
    }).catchError((error) {
      print(error);
    });
  }
}
