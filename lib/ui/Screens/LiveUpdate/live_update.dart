import 'package:covid_19/ui/Screens/Home/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LiveUpdate extends StatefulWidget {
  @override
  _LiveUpdateState createState() => _LiveUpdateState();
}

class _LiveUpdateState extends State<LiveUpdate> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            width: size.width,
            height: size.height,
            color: Colors.indigo.shade600,
            child: Column(
              children: <Widget>[
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
