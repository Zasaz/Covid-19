import 'package:covid_19/ui/Screens/Home/card_data_screens.dart';
import 'package:covid_19/ui/Screens/Home/home.dart';
import 'package:covid_19/ui/Screens/Home/top_bar.dart';
import 'package:covid_19/ui/Screens/LiveUpdate/live_update.dart';
import 'package:covid_19/ui/Screens/SplashScreen/splash_screen.dart';
import 'package:covid_19/ui/Screens/stats/dummmy.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LiveUpdate(),
    );
  }
}
