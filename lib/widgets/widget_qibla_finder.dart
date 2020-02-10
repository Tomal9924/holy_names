import 'package:flutter/material.dart';
import 'package:holy_names/qibla_icons.dart';
import 'package:holy_names/utils.dart' as utils;
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class QiblaCompass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 105,
      child: Card(
        color: utils.color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(MdiIcons.compass,color: Colors.orangeAccent.shade100,size: 36,),
            Text("Qiblah",style: new TextStyle(color: Colors.orangeAccent.shade100),)
          ],
        ),
      ),
    );
  }
}
