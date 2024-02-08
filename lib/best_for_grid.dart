import 'package:flutter/material.dart';
export "best_for_grid.dart";

class BestForGrid extends StatelessWidget {
  const BestForGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3, // number of items in each row
    mainAxisSpacing: 8.0, // spacing between rows
    crossAxisSpacing: 8.0, // spacing between columns
  ),
  padding: EdgeInsets.all(8.0), // padding around the grid
  itemCount: 2, // total number of items
  itemBuilder: (context, index) {
    return Container(
      color: Colors.blue, // color of grid items
      child: Center(
        child: Text(
          'items[index]',
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
      ),
    );
  },
);
  }
}
