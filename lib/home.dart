import 'package:flutter/material.dart';
import 'package:islami_c8_sunday/tabs/ahadeth.dart';
import 'package:islami_c8_sunday/tabs/quran.dart';
import 'package:islami_c8_sunday/tabs/radio.dart';
import 'package:islami_c8_sunday/tabs/sebha.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabs = [QurabTab(), SebhaTab(), AhadethTab(), RadioTab()];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            "assets/images/dark_bg.png",
            fit: BoxFit.fill,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Islami", style: Theme.of(context).textTheme.bodyLarge),
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
                icon: ImageIcon(AssetImage("assets/images/quran.png")),
                label: "Quran",
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: "Sebha",
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                label: "Ahadeth",
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/radio.png"),
                ),
                label: "Radio",
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
