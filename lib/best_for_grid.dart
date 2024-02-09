import 'package:flutter/material.dart';

import 'cards.dart';
export "best_for_grid.dart";

class BestForGrid extends StatelessWidget {
  BestForGrid({Key? key}) : super(key: key);

  final List<List<String>> data = [
    ["https://www.eatthis.com/wp-content/uploads/sites/4/2022/11/fitness-man-pushups.jpg?quality=82&strip=1", "Belly fat burner", "10 min", "Beginner"],
    ["https://qph.cf2.quoracdn.net/main-qimg-7450cec265db26a7c302b80d132a3f61-lq", "Lose fat", "10 min", "Beginner"],
    ["https://i.ytimg.com/vi/pSHjTRCQxIw/maxresdefault.jpg", "Plank", "5 min", "Expert"],
    ["https://manofmany.com/wp-content/uploads/2023/08/14-Best-Dumbbell-Workouts-and-Exercises-For-a-Full-Body-Workout.jpg", "Build Whiler E", "30 min", "Intermediate"]
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.horizontal, 
      crossAxisCount: 2,  
      mainAxisSpacing: 14.0, 
      crossAxisSpacing: 10.0, 
       childAspectRatio: 0.6, 
      padding: EdgeInsets.all(5.0), 
      children: List.generate(4, (index) {
        return CustomCard( imgSrcText: data[index][0],titleText : data[index][1],timeText : data[index][2],difficultyText: data[index][3]);
      }),
    );
  }
}
