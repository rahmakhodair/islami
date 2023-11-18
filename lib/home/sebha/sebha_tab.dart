import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  List<String> text = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
  ];
  int currentIndex = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 5,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.09),
                child: Transform.rotate(
                  angle: angle,
                  child: InkWell(
                    onTap: () {
                      clickOnImage();
                    },
                    child: Image.asset("assets/images/sebha_logo.png",
                        height: size.height * 0.20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.10),
                child: Image.asset("assets/images/head_of_sebhaa.png",
                    height: size.height * 0.10),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "عدد التسبيحات",
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).primaryColor,
            ),
            child: Center(
              child: Text(
                "$counter",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(horizontal: 100),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).primaryColor,
            ),
            child: Center(
              child: Text(
                text[currentIndex],
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void clickOnImage() {
    angle += 3;

    if (counter == 33) {
      counter = 0;
      currentIndex++;
      currentIndex = currentIndex % 3;
    }
    counter++;

    setState(() {});
  }
}
