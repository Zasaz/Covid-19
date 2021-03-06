import 'package:covid_19/ui/model/symptoms_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CoronaSymptoms extends StatefulWidget {
  @override
  _CoronaSymptomsState createState() => _CoronaSymptomsState();
}

class _CoronaSymptomsState extends State<CoronaSymptoms> {
  Widget _homeGrid() {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.8,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: dummyData.length,
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35)),
                  elevation: 10,
                  color: Colors.indigo.shade600,
                  child: Container(
                    // color: Colors.white54,
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "*" + dummyData[index].head.toString().toUpperCase(),
                          style: GoogleFonts.alegreya(
                              fontSize: 25,
                              color: Colors.white,
                              letterSpacing: 3),
                        ),
                        Text(
                          dummyData[index].description.toString(),
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.alegreya(
                              fontSize: 17, color: Colors.white54),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }

  Widget _backButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Row(
        children: <Widget>[
          Container(
            // padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
            child: Icon(Icons.keyboard_arrow_left, color: Colors.white),
          ),
          InkWell(
            child: Text('Back',
                style: GoogleFonts.alegreya(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo.shade600,
        body: SafeArea(
          child: Container(
            //  Main Container
            width: size.width,
            height: size.height,
            // color: Colors.indigo[600],
            child: Column(
              children: <Widget>[_backButton(), _homeGrid()],
            ),
          ),
        ),
      ),
    );
  }
}
