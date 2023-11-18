import 'package:flutter/material.dart';
import 'package:practice_app/home/hadeth/hadeth_tab.dart';
import 'package:practice_app/my_theme.dart';
import 'package:provider/provider.dart';

import '../../providers/app_config_provider.dart';
import 'item_hadeth_details.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth_details_screen';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Stack(children: [
      provider.appTheme == ThemeMode.dark
          ? Image.asset('assets/images/main_background_dark.png',
              width: double.infinity, height: double.infinity, fit: BoxFit.fill)
          : Image.asset('assets/images/main_background.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill),
      Scaffold(
        appBar: AppBar(
          title: Text(args.title,
              style: provider.appTheme == ThemeMode.dark
                  ? Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: MyTheme.yellowColor)
                  : Theme.of(context).textTheme.titleLarge),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
            vertical: MediaQuery.of(context).size.width * 0.06,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: provider.appTheme == ThemeMode.dark
                ? MyTheme.primaryDark
                : MyTheme.whiteColor,
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemHadethDetails(contant: args.content[index]);
            },
            itemCount: args.content.length,
          ),
        ),
      ),
    ]);
  }
}
