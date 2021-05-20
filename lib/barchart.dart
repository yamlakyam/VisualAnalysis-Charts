import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart';
import 'dart:async';
import 'donutchart.dart' as dC;

class barchartt extends StatefulWidget {
  const barchartt({Key key}) : super(key: key);

  @override
  _barcharttState createState() => _barcharttState();
}

class _barcharttState extends State<barchartt> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(Duration(seconds: 5), () {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: ( context) => dC.DonutChart()));
    // });
    Future.delayed(Duration(seconds: 5)).then((value) =>
        Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: Duration(seconds: 5),
                transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secAnimation,
                    Widget child) {
                  return ScaleTransition(scale: animation,
                      alignment: Alignment.center,
                      child: child);
                },
                pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secAnimation) {
                  return dC.DonutChart();
                })));
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'anim',
      child: MaterialApp(
        home: Scaffold(body: Center(child: Text('HII'))),
      ),
    );
  }
}
