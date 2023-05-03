import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_pag.png'),
        const SizedBox(
          height: 30,
        ),
        Text(
          'إذاعة القرآن الكريم',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color:
                  Theme.of(context).colorScheme.brightness == Brightness.light
                      ? Colors.black
                      : Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.backwardStep,
                    color: Theme.of(context).brightness == Brightness.light
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).colorScheme.secondary,
                    size: 30,
                  ),
                )),
            const SizedBox(
              width: 28,
            ),
            IconButton(
                onPressed: () {},
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.play,
                    color: Theme.of(context).brightness == Brightness.light
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).colorScheme.secondary,
                    size: 30,
                  ),
                )),
            const SizedBox(
              width: 28,
            ),
            IconButton(
                onPressed: () {},
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.forwardStep,
                    color: Theme.of(context).brightness == Brightness.light
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).colorScheme.secondary,
                    size: 30,
                  ),
                ))
          ],
        )
      ],
    );
  }
}
