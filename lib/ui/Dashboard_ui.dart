import 'package:flutter/material.dart';
import 'package:holy_names/widgets/widget_al_quran.dart';
import 'package:holy_names/widgets/widget_arabic_calender.dart';
import 'package:holy_names/widgets/widget_dua.dart';
import 'package:holy_names/widgets/widget_masjid_finder.dart';
import 'package:holy_names/widgets/widget_names_of_Allah.dart';
import 'package:holy_names/widgets/widget_prayer_time.dart';
import 'package:holy_names/widgets/widget_qibla_finder.dart';
import 'package:holy_names/widgets/widget_ramadan.dart';
import 'package:holy_names/widgets/widget_tasbih.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}
//https://muslimsalat.com/dhaka.json?key=12615815044160840c3f08be56949006

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFF003F38),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Image.asset(
                  "images/background.jpg",
                  fit: BoxFit.cover,
                  scale: 1,
                )
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(top: 0),
                    padding:EdgeInsets.only(top: 0),
                    color: Color(0xFFC1D6D9),
                    height: 365,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: PrayerTime(),
                            ),
                            Expanded(
                              flex: 1,
                              child: MasjidFinder(),
                            ),
                            Expanded(
                              flex: 1,
                              child: AlQuran(),
                            ),

                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: QiblaCompass(),
                            ),
                            Expanded(
                              flex: 1,
                              child: Dua(),
                            ),
                            Expanded(
                              flex: 1,
                              child: NamesOfAllah(),
                            ),

                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Tasbih(),
                            ),
                            Expanded(
                              flex: 1,
                              child: RamjanUpdate(),
                            ),
                            Expanded(
                              flex: 1,
                              child: ArabicCalender(),
                            ),

                          ],
                        ),
                      ],
                    )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
