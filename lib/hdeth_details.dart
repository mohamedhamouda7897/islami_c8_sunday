import 'package:flutter/material.dart';
import 'package:islami_c8_sunday/hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "HadethDetails";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
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
                args.title,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            body: SingleChildScrollView(
              child: Card(
                elevation: 12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                    side: BorderSide(color: Theme.of(context).primaryColor)),
                margin: const EdgeInsets.all(12),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    args.content,
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            )));
  }
}
