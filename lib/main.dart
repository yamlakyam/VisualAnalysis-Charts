import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

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

  @override
  void initState() {
    super.initState();
    _pieData = List<charts.Series<PieData, String>>.empty(growable: true);
  }

  generateData() {
    var pieData = [
      new PieData('Work', 35.8),
      new PieData('Eat', 8.3),
      new PieData('TV', 15.6),
      new PieData('Sleep', 19.2),
      new PieData('Other', 10.3)
    ];

    _pieData.add(charts.Series(
        domainFn: (PieData data, _) => data.activity,
        measureFn: (PieData data, _) => data.time,
        id: 'Time Spent',
        data: pieData),);
    return _pieData;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: charts.PieChart(generateData()),
        ),
      ),
    );
  }
}


class PieData {
  String activity;
  double time;

  PieData(this.activity, this.time);
}