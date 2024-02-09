import 'package:flutter/material.dart';
import 'package:sathvik_malgikar_sample/cards.dart';

List<List> data = [
  [
    "Plank challenge",
    const Icon(
      Icons.local_fire_department_outlined,
      color: Colors.grey,
      size: 50.0,
    ),
    Colors.yellow
  ],
  [
    "Sprint challenge",
    const Icon(
      Icons.directions_run_outlined,
      color: Colors.grey,
      size: 50.0,
    ),
    Colors.black
  ],
  [
    "Weights challenge",
    const Icon(
      Icons.fitness_center,
      color: Colors.grey,
      size: 50.0,
    ),
    Colors.white
  ],
];

Widget ChallengeRow = SingleChildScrollView(
  child: Row(
      children: List.generate(3, (index) {
    return ChallengeCard(
        title: data[index][0],
        thumbnail: data[index][1],
        background: data[index][2]);
  })),
  scrollDirection: Axis.horizontal,
);
