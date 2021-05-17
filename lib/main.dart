import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'dart:async';
import 'package:charts_in_flutterr/barchart.dart' as bC;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<charts.Series<PieData, String>> _pieData;

  route() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>bC.barchartt()
        )
    );
  }

  @override
  void initState() {
    super.initState();
    _pieData = List<charts.Series<PieData, String>>.empty(growable: true);
    startTime();
  }

  generateData() {
    var pieData = [
      new PieData('Work', 35.8),
      new PieData('Eat', 8.3),
      new PieData('TV', 15.6),
      new PieData('Sleep', 19.2),
      new PieData('Other', 10.3)
    ];

    _pieData=[];
    _pieData.add(
      charts.Series(
          domainFn: (PieData data, _) => data.activity,
          measureFn: (PieData data, _) => data.time,
          id: 'Time Spent',
          data: pieData),
    );
    return _pieData;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: charts.PieChart(
            generateData(),
            animate: true,
            animationDuration: Duration(seconds: 5),
            defaultRenderer:
                charts.ArcRendererConfig(arcWidth: 100, arcRendererDecorators: [
              charts.ArcLabelDecorator(
                  labelPosition: charts.ArcLabelPosition.inside),
            ]),
          ),
        ),
      ),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return Timer(duration, route);
  }
}

class PieData {
  String activity;
  double time;

  PieData(this.activity, this.time);
}
