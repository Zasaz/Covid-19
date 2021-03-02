import 'package:covid_19/ui/Screens/Home/top_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'card_data_screens.dart';

class HomeData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo.shade100,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  children: [Spacer(), TopBar()],
                ),
              ),
              // CovidHead(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Card(
                  elevation: 10,
                  // color: Colors.blue.shade100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        child: Image(
                          image: NetworkImage(
                              'https://static.scientificamerican.com/sciam/cache/file/DD4B1964-AC7C-4BD0-822114945BCE13AA_source.png?w=590&h=800&DDF71044-174D-410F-80CDB992663CBB8C'),
                          fit: BoxFit.cover,
                          // height: 140,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'How to recover\nfrom Covid 19'.toUpperCase(),
                          style: GoogleFonts.alegreya(
                              fontSize: 22,
                              color: Colors.black54,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                        alignment: Alignment.centerRight,
                      ),
                    ],
                  ),
                ),
              ),
              // Start from here
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                child: Card(),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.55,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
