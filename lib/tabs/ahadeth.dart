import 'package:flutter/material.dart';
import 'package:islami_c8_sunday/hdeth_details.dart';
import 'package:islami_c8_sunday/providers/ahadeth_provider.dart';
import 'package:provider/provider.dart';

class AhadethTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AhadethProvider()..loadHadethFile(),
      builder: (context, child) {
        var pro = Provider.of<AhadethProvider>(context);
        return Center(
          child: Column(
            children: [
              Image.asset("assets/images/hadeth_bg.png"),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: Theme.of(context).primaryColor,
                    thickness: 1,
                    endIndent: 40,
                    indent: 40,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, HadethDetails.routeName,
                            arguments: pro.AllAhadeth[index]);
                      },
                      child: Text(
                        pro.AllAhadeth[index].title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 18),
                      ),
                    );
                  },
                  itemCount: pro.AllAhadeth.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
