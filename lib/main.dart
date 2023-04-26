import 'package:flutter/material.dart';
import 'package:islami_c8_sunday/hdeth_details.dart';
import 'package:islami_c8_sunday/home.dart';
import 'package:islami_c8_sunday/my_themes.dart';
import 'package:islami_c8_sunday/sura_details.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.dark,
      routes: {
        HomeScreen.routeName: (c) => HomeScreen(),
        SuraDetails.routeName: (c) => SuraDetails(),
        HadethDetails.routeName: (c) => HadethDetails(),
      },
    );
  }
}
