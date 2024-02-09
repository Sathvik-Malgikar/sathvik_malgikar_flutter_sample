import 'package:flutter/material.dart';
export "cards.dart";

class ChallengeCard extends StatelessWidget {
  final String title;
  final String thumbnailSrc;
  final Color background;

  const ChallengeCard(
      {required this.title,
      required this.thumbnailSrc,
      required this.background,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
      color: background,
      alignment: Alignment.bottomCenter,
      child: Row(children: [Text(title), Image.network(thumbnailSrc)]),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String imgSrcText;
  final String titleText;
  final String timeText;
  final String difficultyText;

  const CustomCard(
      {required this.imgSrcText,
      required this.titleText,
      required this.timeText,
      required this.difficultyText,
      Key? key})
      : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: Colors.white,
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.all(2),
      child: Row(
        children: [
          Image.network(imgSrcText, width: 70,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 2),
                child: Text(titleText),
              ),
              Text(difficultyText,
                  style: const TextStyle(
                      backgroundColor: Color.fromARGB(255, 220, 220, 220))),
              Text(timeText,
                  style: const TextStyle(
                      backgroundColor: Color.fromARGB(255, 220, 220, 220))),
            ],
          )
        ],
      ),
    );
  }
}
