import 'package:flutter/material.dart';
import 'package:holy_names/qibla_icons.dart';
import 'package:holy_names/utils.dart' as utils;

class NamesOfAllah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card(
        color: utils.color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Qibla.allah,color: Colors.orangeAccent.shade100,size: 36,),
            Text("Names of Allah",style: new TextStyle(color: Colors.orangeAccent.shade100),)
          ],
        ),
      ),
    );
  }
}
