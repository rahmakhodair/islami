import 'package:flutter/material.dart';

class ItemSuraDetails extends StatelessWidget {
  String contant;
  int index;

  ItemSuraDetails({required this.contant, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text('$contant {${index + 1}}',
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl);
  }
}
