import 'package:flutter/material.dart';
export "stack1.dart";

Widget Stack1 = Stack(
  children: [
    Container(
      margin: EdgeInsets.all(10),
      child: Image.network(
        "https://prod-ne-cdn-media.puregym.com/media/819394/gym-workout-plan-for-gaining-muscle_header.jpg?quality=80",
        height: 200,
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.hardEdge,
    ),
    Positioned(
        child: Column(
          children: [
            Text("Best Quarantine Workout",
                style: TextStyle(
                  fontSize: 27,
                )),
            const Text(
              "See more >",
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 255, 223, 0)),
            ),
          ],
        ),
        left: 30,
        top: 70)
  ],
);
