import 'package:flutter/material.dart';
import 'package:islami_c8_sunday/providers/my_provider.dart';
import 'package:islami_c8_sunday/showTheme_BottomSheet.dart';
import 'package:provider/provider.dart';

import '../showLanguage_BottomSheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Theming"),
          SizedBox(
            height: 4,
          ),
          InkWell(
            onTap: () {
              showThemeSheet();
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  provider.themeMode == ThemeMode.light ? "Light" : "Dark",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 22, fontWeight: FontWeight.w200),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Language"),
          SizedBox(
            height: 4,
          ),
          InkWell(
            onTap: () {
              showLanguageSheet();
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  provider.language == "en" ? "English" : "عربي",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 22, fontWeight: FontWeight.w200),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ShowLanguageBottomSheet();
      },
    );
  }

  void showThemeSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ShowThemeBottomSheet();
      },
    );
  }
}
