import 'package:covid_19/ui/Screens/Precautions/precautions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardIconRotation extends StatefulWidget {
  @override
  _CardIconRotationState createState() => _CardIconRotationState();
}

class _CardIconRotationState extends State<CardIconRotation>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    // new Future.delayed(
    //     const Duration(seconds: 5),
    //         () => Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => Precautions()),
    //     ));
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animationController,
      child: Image.asset(
        'assets/virus.png',
        width: 90,
        height: 90,
      ),
    );
  }
}
