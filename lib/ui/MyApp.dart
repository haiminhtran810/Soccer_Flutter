import 'package:flutter/material.dart';
import 'package:soccerflutter/ui/RandomWords.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: Colors.green),
        home: RandomWords());
  }
}
