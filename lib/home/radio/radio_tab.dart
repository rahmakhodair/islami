import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 60),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/radio_logo.png'),
        ),
        SizedBox(height: 20),
        Text(
          "إذاعة القرآن الكريم",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(height: 60),
        Image.asset('assets/images/play.png'),
      ],
    );
  }
}
