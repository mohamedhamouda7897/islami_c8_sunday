import 'package:flutter/material.dart';
import 'package:islami_c8_sunday/providers/sura_details_provider.dart';
import 'package:islami_c8_sunday/sura_details_args.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = "sura-details";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;

    return ChangeNotifierProvider(
      create: (context) => SuraDetailsProvider()..loadFile(args.index),
      builder: (context, child) {
        var provider = Provider.of<SuraDetailsProvider>(context);

        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  Theme.of(context).colorScheme.brightness == Brightness.dark
                      ? "assets/images/dark_bg.png"
                      : "assets/images/main_bg.png",
                ),
                fit: BoxFit.fill),
          ),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                args.suraName,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            body: provider.verses.isEmpty
                ? Center(
                    child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ))
                : ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      thickness: 1,
                      endIndent: 40,
                      indent: 40,
                      color: Theme.of(context).primaryColor,
                    ),
                    itemBuilder: (context, index) {
                      return Directionality(
                        textDirection: TextDirection.rtl,
                        child: Center(
                            child: Text(
                          "${provider.verses[index]}",
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        )),
                      );
                    },
                    itemCount: provider.verses.length,
                  ),
          ),
        );
      },
    );
  }
}
