import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        height: 50,
        padding: EdgeInsets.all(2),
       
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.black,),
        child: Row(children: [
          Icon(
  Icons.home,
  size: 40,
  color: Colors.white,
),
Icon(
  Icons.rocket_launch,
   size: 40,
    color: Colors.white,
),
Icon(
  Icons.analytics,
   size: 40,
    color: Colors.white,
),
Icon(
  Icons.account_circle,
   size: 40,
    color: Colors.white,
),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,),
        );
  }
}
