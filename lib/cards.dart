import 'package:flutter/material.dart';
export "cards.dart";

class ChallengeCard extends StatelessWidget {
  final String title;
  final Icon thumbnail;
  final Color background;

  const ChallengeCard(
      {required this.title,
      required this.thumbnail,
      required this.background,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 100, maxHeight: 100),
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: background),
      alignment: Alignment.bottomCenter,
      child: Stack(children: [
        Positioned(
          child: Container(
            child: Text(
              title,
              style: TextStyle(
                  color:
                      background == Colors.black ? Colors.white : Colors.black),
            ),
            width: 60,
          ),
          left: 2,
          bottom: 10,
        ),
        Positioned(
          child: thumbnail,
          right: 10,
          bottom: 10,
        )
      ]),
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
      margin: const EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Image.network(
              imgSrcText,
              width: 100,
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            clipBehavior: Clip.hardEdge,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
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
