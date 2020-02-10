import 'package:flutter/material.dart';
import 'package:holy_names/qibla_icons.dart';
import 'package:holy_names/utils.dart' as utils;

class ArabicCalender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      child: Card(
        color: utils.color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.date_range,color: Colors.orangeAccent.shade100,size: 36,),
            Text("Arabic Calender",style: new TextStyle(color: Colors.orangeAccent.shade100),)
          ],
        ),
      ),
    );
  }
}
