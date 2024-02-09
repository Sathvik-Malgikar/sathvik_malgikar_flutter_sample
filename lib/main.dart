import 'package:flutter/material.dart';
import 'package:sathvik_malgikar_sample/best_for_grid.dart';
import 'cards.dart';
import 'challenge_row.dart';
import 'footer.dart';
import 'warmup_row.dart';
import 'topbanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sathvik Malgikar Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Flexible(child: TopBanner,flex: 2,fit:FlexFit.loose),
        const Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text("Best for you",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        Flexible(child: BestForGrid(),flex: 2,),
        const Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text("Challenge",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        Flexible(child: ChallengeRow,flex: 1,),
        const Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text("Fast Warmup",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
Flexible(child: WarmupRow,flex:1),
Footer()
      ]),
    );
  }
}
