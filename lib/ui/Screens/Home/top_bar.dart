import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.indigo.shade500,
      width: size.width,
      height: size.height * 0.09,
      child: Card(
        elevation: 20,
        color: Colors.indigo.shade500,
        shadowColor: Colors.indigo.shade600,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
            side: BorderSide(color: Colors.indigo.shade600)),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Covid-19'.toUpperCase(),
                style: GoogleFonts.alegreya(
                    fontSize: 22, color: Colors.white, letterSpacing: 4),
              ),
              Icon(Icons.person_pin_circle_outlined, color: Colors.white, size: 25)
            ],
          ),
        ),
      ),
    );
  }
}
