import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[Icon(Icons.settings, color: Colors.blue, size: 25)],
      ),
    );
  }
}

// class CovidHead extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 30),
//       alignment: Alignment.topLeft,
//       child: Text(
//         'COVID - 19', style: GoogleFonts.alegreya(fontSize: 30, color: Colors.indigo, letterSpacing: 4, fontWeight: FontWeight.w500),
//       ),
//     );
//   }
// }

