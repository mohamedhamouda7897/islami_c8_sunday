import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../hadeth_model.dart';

class AhadethProvider extends ChangeNotifier {
  List<HadethModel> AllAhadeth = [];

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
      notifyListeners();
    }).catchError((error) {
      print(error);
    });
  }
}
