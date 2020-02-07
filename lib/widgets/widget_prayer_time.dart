import 'package:flutter/material.dart';
import 'package:holy_names/utils.dart' as utils;

class PrayerTime extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: InkWell(
        onTap: (){
          getPryerTimeData();
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

  void getPryerTimeData() {}
}
