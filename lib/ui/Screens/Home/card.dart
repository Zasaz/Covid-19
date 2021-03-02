import 'package:flutter/material.dart';

class Card extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: GridView.count(
            shrinkWrap: false,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 0.0,
            childAspectRatio: 1.9,
            crossAxisCount: 4,
            primary: false,
            children: <Widget>[
              Container(

              )
            ],
          ),
        ),
      ),
    );
  }
}
