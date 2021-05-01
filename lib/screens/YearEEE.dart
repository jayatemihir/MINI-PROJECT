import 'package:flutter/material.dart';
import 'package:main_page_app/screens/ThreeEE.dart';
import 'package:main_page_app/screens/TwoEE.dart';
import 'package:page_transition/page_transition.dart';

import 'One.dart';

class YearEEE extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Year"),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Text('Select Your Year',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      )),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text('1st Year'),
                        onPressed: () {

                          Navigator.push(context,PageTransition(child: One(),type: PageTransitionType.scale));
                        },
                      )),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text('2nd Year'),
                        onPressed: () {
                          Navigator.push(context,PageTransition(child: TwoEEE(),type: PageTransitionType.scale));
                        },
                      )),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text('3rd Year'),
                        onPressed: () {

                          Navigator.push(context,PageTransition(child: ThreeEEE(),type: PageTransitionType.scale));
                        },
                      )),

                ]
            )));
  }

}