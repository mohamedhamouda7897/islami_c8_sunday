import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c8_sunday/tabs/ahadeth.dart';
import 'package:islami_c8_sunday/tabs/quran.dart';
import 'package:islami_c8_sunday/tabs/radio.dart';
import 'package:islami_c8_sunday/tabs/sebha.dart';
import 'package:islami_c8_sunday/tabs/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabs = [
    QurabTab(),
    const SebhaTab(),
    AhadethTab(),
    const RadioTab(),
    const SettingsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            Theme.of(context).colorScheme.brightness == Brightness.dark
                ? "assets/images/dark_bg.png"
                : "assets/images/main_bg.png",
            fit: BoxFit.fill,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.appTitle,
                style: Theme.of(context).textTheme.bodyLarge),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Theme.of(context).primaryColor,
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage("assets/images/quran.png")),
                label: AppLocalizations.of(context)!.quran,
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage("assets/images/sebha.png")),
                label: AppLocalizations.of(context)!.sebha,
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage("assets/images/ahadeth.png")),
                label: AppLocalizations.of(context)!.ahadeth,
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/images/radio.png"),
                ),
                label: AppLocalizations.of(context)!.radio,
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
                label: "Seetings",
                backgroundColor: Theme.of(context).primaryColor,
              ),
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }
}
