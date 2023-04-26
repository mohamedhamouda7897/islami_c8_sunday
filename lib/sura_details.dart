import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c8_sunday/sura_details_args.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "sura-details";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/main_bg.png",
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
        body: verses.isEmpty
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
                      "${verses[index]}",
                      style: GoogleFonts.elMessiri(
                          fontSize: 20, color: Color(0xFF242424)),
                      textAlign: TextAlign.center,
                    )),
                  );
                },
                itemCount: verses.length,
              ),
      ),
    );
  }

  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    print(lines);

    setState(() {
      verses = lines;
    });
  }
}
