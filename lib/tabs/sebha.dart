import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int totalCounter = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(
            flex: 3,
          ),
          Image.asset(
            Theme.of(context).colorScheme.brightness == Brightness.light
                ? 'assets/images/sebha_bg.png'
                : 'assets/images/sebha_bg_dark.png',
            scale: 1.2,
          ),
          const Spacer(
            flex: 2,
          ),
          Text('عدد التسبيحات',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.brightness ==
                          Brightness.light
                      ? Colors.black
                      : Colors.white)),
          const Spacer(
            flex: 3,
          ),
          ElevatedButton(
            onPressed: () {
              checkState();
              setState(() {});
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Theme.of(context).primaryColor),
                fixedSize: const MaterialStatePropertyAll(Size(69, 81)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)))),
            child: Text(
              '$totalCounter',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.brightness ==
                            Brightness.light
                        ? Colors.black
                        : Theme.of(context).colorScheme.secondary,
                  ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color:
                    Theme.of(context).colorScheme.brightness == Brightness.light
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(8.0),
            child: Text(
              tasbeeh,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.brightness ==
                          Brightness.dark
                      ? Colors.black
                      : Colors.white),
            ),
          ),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }

  int counter = 0;

  String tasbeeh = '';

  List<String> tasbeehat = [
    'الحمد لله',
    'الله أكبر',
    'سبحان الله',
    'لا حول ولا قوة إلا بالله'
  ];

  checkState() {
    if (totalCounter < 33) {
      tasbeeh = tasbeehat[counter];
      totalCounter++;
    } else {
      totalCounter = 1;
      counter++;
      if (counter < tasbeehat.length) {
        tasbeeh = tasbeehat[counter];
      } else {
        counter = 0;
        tasbeeh = tasbeehat[counter];
        totalCounter = 1;
      }
    }
  }
}
