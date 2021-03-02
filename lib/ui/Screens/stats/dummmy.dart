import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class Dummy extends StatefulWidget {
  @override
  _DummyState createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
  final String allCustomerURL =
      "https://api.apify.com/v2/datasets/9eUGCilmJ8HDf60mL/items?format=json&clean=1";
  List data;

  @override
  // ignore: must_call_super
  void initState() {
    this.getJsonData();
    super.initState();
  }

  // ignore: missing_return
  Future<String> getJsonData() async {
    var response = await http.get(
        // Encoding URL
        Uri.encodeFull(allCustomerURL),
        headers: {"Accept": "application/json"});

    print(response.body);

    setState(() {
      var convertDataToJson = jsonDecode(response.body);
      data = convertDataToJson;
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.blueGrey.shade300,
        body: SafeArea(
          child: Scrollbar(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: data == null ? 0 : data.length,
                itemBuilder: (context, int index){
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      elevation: 20,
                      child: Column(
                        children: <Widget>[
                          Text('COVID 19 - Pakistan Stats'.toUpperCase(),style: GoogleFonts.alegreya(fontSize: 20, color: Colors.black),),
                          Text("Last Updated: " + data[index]['lastUpdatedAtSource'].toString(), style: TextStyle(fontSize: 18, color: Colors.red),),
                          Divider(color: Colors.black12),
                          Text("Infected: " + data[index]['infected'].toString(), style: TextStyle(fontSize: 18, color: Colors.red),),
                          Text("Recovered: " + data[index]['recovered'].toString(), style: TextStyle(fontSize: 18, color: Colors.green)),
                          Text("Deceased: " + data[index]['deceased'].toString(), style: TextStyle(fontSize: 18, color: Colors.red)),
                          Text("Critical: " + data[index]['critical'].toString(), style: TextStyle(fontSize: 18, color: Colors.red))
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
