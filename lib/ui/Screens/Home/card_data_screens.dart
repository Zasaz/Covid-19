import 'dart:ffi';
import 'dart:ui';
import 'package:covid_19/ui/Screens/Home/CardScreens/current_stats.dart';
import 'package:covid_19/ui/model/grid_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScreens extends StatefulWidget {
  // ignore: non_constant_identifier_names
  @override
  _CardScreensState createState() => _CardScreensState();
}

class _CardScreensState extends State<CardScreens> {
  // ignore: non_constant_identifier_names
  var COVIDData = GridData.getGridData;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          itemCount: COVIDData.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return new GestureDetector(
              child: new Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35)),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(35),
                          bottomLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                          topLeft: Radius.circular(35)),
                      child: Image(
                        image: NetworkImage(COVIDData[index]["imagePath"]),
                        fit: BoxFit.fitHeight,
                        height: 200,
                      ),
                    ),
                    Positioned(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              COVIDData[index]['head'],
                              style: GoogleFonts.alegreya(
                                  fontSize: 22,
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
