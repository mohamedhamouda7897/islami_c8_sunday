import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_c8_sunday/hdeth_details.dart';
import 'package:islami_c8_sunday/home.dart';
import 'package:islami_c8_sunday/my_themes.dart';
import 'package:islami_c8_sunday/providers/my_provider.dart';
import 'package:islami_c8_sunday/sura_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => MyProvider(),
    ),
    // ChangeNotifierProvider(create: (context) => SuraDetailsProvider(),),
  ], child: MyApplication()));
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("en"),
        Locale("ar"),
      ],
      locale: Locale(provider.language),
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
      routes: {
        HomeScreen.routeName: (c) => HomeScreen(),
        SuraDetails.routeName: (c) => SuraDetails(),
        HadethDetails.routeName: (c) => HadethDetails(),
      },
    );
  }
}
