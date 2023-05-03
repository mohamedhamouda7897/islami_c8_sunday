import 'package:flutter/material.dart';
import 'package:islami_c8_sunday/providers/my_provider.dart';
import 'package:provider/provider.dart';

class ShowThemeBottomSheet extends StatelessWidget {
  const ShowThemeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Column(
      children: [
        InkWell(
          onTap: () {
            pro.changeTheme(ThemeMode.light);
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Text(
                "Light",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: pro.themeMode == ThemeMode.light
                        ? Theme.of(context).primaryColor
                        : Colors.white),
              ),
              Spacer(),
              Icon(
                Icons.done,
                size: 30,
                color: pro.themeMode == ThemeMode.light
                    ? Theme.of(context).primaryColor
                    : Colors.white,
              )
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        InkWell(
          onTap: () {
            pro.changeTheme(ThemeMode.dark);
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Text(
                "Dark",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: pro.themeMode == ThemeMode.light
                          ? Colors.black54
                          : Theme.of(context).colorScheme.secondary,
                    ),
              ),
              Spacer(),
              Icon(Icons.done,
                  size: 30,
                  color: pro.themeMode == ThemeMode.light
                      ? Colors.black54
                      : Theme.of(context).colorScheme.secondary)
            ],
          ),
        ),
      ],
    );
  }
}
