import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:holy_names/utils.dart' as utils;

import '../utils.dart';
import 'package:http/http.dart' as http;

class PrayerTime extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      child: InkWell(
        onTap: (){
          getPrayerTimeData();
        },
        child: Card(
          color: utils.color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.access_time,color: Colors.orangeAccent.shade100,size: 36,),
              Text("Prayer Time",style: new TextStyle(color: Colors.orangeAccent.shade100),)
            ],
          ),
        ),
      ),
    );
  }

  Future getPrayerTimeData() async {
    var result = await http.get('https://muslimsalat.com/dhaka.json?key='+API_KEY_FOR_PRAYER_TIME);
      if (result.statusCode == 200) {

        return json.decode(result.body);
      } else {

        return [];
      }

  }
}
