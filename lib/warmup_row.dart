import 'package:flutter/material.dart';
import 'package:sathvik_malgikar_sample/cards.dart';

List<List> data = [
  [
    "https://barbend.com/wp-content/uploads/2021/08/Barbend-Featured-Image-1600x900-Two-people-doing-leg-exercises-in-the-gym.jpg",
    "Leg exercises",
    "10 min",
    "Beginner"
  ],
  [
    "https://i.ytimg.com/vi/Ubu3uwdPns8/maxresdefault.jpg",
    "Backward lunges",
    "5 min",
    "Beginner"
  ],
];

Widget WarmupRow = SingleChildScrollView(
  child: Row(
      children: List.generate(2, (index) {
    return CustomCard(
        imgSrcText: data[index][0],
        titleText: data[index][1],
        timeText: data[index][2],
        difficultyText: data[index][3]);
  })),
  scrollDirection: Axis.horizontal,
);
