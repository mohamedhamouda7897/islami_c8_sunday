import 'package:flutter/material.dart';
import 'package:islami_c8_sunday/providers/my_provider.dart';
import 'package:provider/provider.dart';

class ShowLanguageBottomSheet extends StatelessWidget {
  const ShowLanguageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Column(
      children: [
        InkWell(
          onTap: () {
            pro.changeLanguage("en");
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Text(
                "English",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: pro.language == "en"
                        ? Theme.of(context).primaryColor
                        : Colors.black54),
              ),
              Spacer(),
              Icon(
                Icons.done,
                size: 30,
                color: pro.language == "en"
                    ? Theme.of(context).primaryColor
                    : Colors.black54,
              )
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        InkWell(
          onTap: () {
            pro.changeLanguage("ar");
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Text(
                "Arabic",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: pro.language != "en"
                          ? Theme.of(context).primaryColor
                          : Colors.black54,
                    ),
              ),
              Spacer(),
              Icon(
                Icons.done,
                size: 30,
                color: pro.language != "en"
                    ? Theme.of(context).primaryColor
                    : Colors.black54,
              )
            ],
          ),
        ),
      ],
    );
  }
}
