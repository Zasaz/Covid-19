import 'package:covid_19/ui/Screens/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Precautions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(230),
                      bottomLeft: Radius.circular(230)),
                  child: Container(
                    color: Colors.blue.shade50,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Image.network(
                        'https://wpcdn.us-midwest-1.vip.tn-cloud.net/www.kansascitymag.com/content/uploads/2020/08/illo1-768x768.png'),
                  ),
                ),
                Text(
                  'Wear a Mask',
                  style: GoogleFonts.alegreya(
                      fontSize: 40, color: Colors.black, letterSpacing: 4),
                ),
                Text(
                  'Save Lives',
                  style: GoogleFonts.alegreya(
                      fontSize: 30,
                      color: Colors.green,
                      letterSpacing: 4,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                Text(
                  'Use proven information about the\ndisease and take necessary\npreventive measures',
                  textAlign: TextAlign.center,
                  style:
                      GoogleFonts.alegreya(fontSize: 19, color: Colors.black),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Container(
                  width: 120,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    padding: EdgeInsets.symmetric(vertical: 10),
                    // color: Colors.blueGrey.shade100,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(25)),
                    child: Icon(Icons.double_arrow_sharp,
                        size: 25, color: Colors.blue),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
