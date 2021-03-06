import 'package:covid_19/ui/Screens/Home/top_bar.dart';
import 'package:covid_19/ui/Screens/LiveUpdate/live_update.dart';
import 'file:///D:/My%20Stuff/Projects/covid_19/lib/ui/Screens/Symptoms/corona_symptoms.dart';
import 'package:covid_19/ui/animation/card_icon_rotate.dart';
import 'package:covid_19/ui/animation/icon_rotation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'card_data_screens.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _headTitle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      width: 150,
      height: 70,
      // color: Colors.black,
      alignment: Alignment.topLeft,
      child: Text(
        'Stay Home\nStay Safe',
        style: GoogleFonts.alegreya(
            fontSize: 30,
            color: Colors.white,
            letterSpacing: 3,
            fontWeight: FontWeight.w700),
      ),
    );
  }

  Widget _homeGrid() {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.25,
        // color: Colors.indigo.shade900,
        child: GridView.count(
          shrinkWrap: false,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          childAspectRatio: 1 / 0.5,
          crossAxisCount: 2,
          primary: false,
          children: <Widget>[
            Container(
              // color: Colors.indigo.shade600,
              child: Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.indigo.shade600),
                    borderRadius: BorderRadius.circular(25)),
                color: Colors.indigo.shade600,
                // elevation: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.local_hospital_sharp,
                        size: 20, color: Colors.white),
                    Text('Hospital',
                        style: GoogleFonts.alegreya(
                            fontSize: 20, color: Colors.white))
                  ],
                ),
              ),
            ),
            Container(
              // color: Colors.indigo.shade600,
              child: Card(
                color: Colors.indigo.shade600,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.indigo.shade600),
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.medical_services_sharp,
                        size: 20, color: Colors.white),
                    Text('Medicine',
                        style: GoogleFonts.alegreya(
                            fontSize: 20, color: Colors.white))
                  ],
                ),
              ),
            ),
            Container(
              child: Card(
                color: Colors.indigo.shade600,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.indigo.shade600),
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.contact_support_sharp,
                        size: 20, color: Colors.white),
                    Text('Consultency',
                        style: GoogleFonts.alegreya(
                            fontSize: 20, color: Colors.white))
                  ],
                ),
              ),
            ),
            Container(
              child: Card(
                color: Colors.indigo.shade600,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.indigo.shade600),
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.shield, size: 20, color: Colors.white),
                    Text('Diagnostic',
                        style: GoogleFonts.alegreya(
                            fontSize: 20, color: Colors.white))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _liveUpdate() {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.18,
        child: Card(
          elevation: 10,
          shadowColor: Colors.indigo.shade400,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.indigo.shade600),
              borderRadius: BorderRadius.circular(25)),
          color: Colors.pink.shade200,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 40,
                right: 10,
                child: InkWell(
                  child: CircleAvatar(
                    backgroundColor: Colors.pink.shade100,
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LiveUpdate()));
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Text(
                  'Live Updates',
                  style: GoogleFonts.alegreya(
                      fontSize: 24, color: Colors.white, letterSpacing: 2),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Text(
                  'about Corona Virus',
                  style: GoogleFonts.alegreya(
                      fontSize: 16, color: Colors.white, letterSpacing: 2),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomCard() {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.2,
        child: Card(
          elevation: 10,
          color: Colors.indigo.shade600,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Stack(
            children: <Widget>[
              Container(
                  alignment: Alignment.centerRight, child: CardIconRotation()),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text(
                  '5 Symptoms\nabout Corona',
                  style: GoogleFonts.alegreya(
                      fontSize: 22, color: Colors.white, letterSpacing: 2),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                alignment: Alignment.bottomLeft,
                width: MediaQuery.of(context).size.width * 1.6,
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CoronaSymptoms()),
                      );
                    },
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    color: Colors.indigo.shade500,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      'Learn more',
                      style: GoogleFonts.alegreya(
                          fontSize: 18, color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo.shade500,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: TopBar()),
              _headTitle(),
              SizedBox(height: 10),
              _homeGrid(),
              SizedBox(height: 5),
              _liveUpdate(),
              SizedBox(height: 5),
              _bottomCard()
            ],
          ),
        ),
      ),
    );
  }
}
