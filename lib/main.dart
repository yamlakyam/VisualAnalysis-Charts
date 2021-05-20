import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'dart:async';
import 'package:charts_in_flutterr/barchart.dart' as bC;

void main() {
  runApp(MaterialApp(
    home:MyApp()
  ));
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

    _pieData = [];
    _pieData.add(
      charts.Series(
        domainFn: (PieData data, _) => data.activity,
        measureFn: (PieData data, _) => data.time,
        id: 'Time Spent',
        data: pieData,
        labelAccessorFn: (PieData row, _) => '${row.activity} : ${row.time}',
      ),
    );
    return _pieData;
  }

  void tDelay() {
    Future.delayed(Duration(seconds: 10), () {
      //setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => bC.barchartt()));
      // });
    });
  }

  // Future delay() async{
  //   await new Future.delayed(new Duration(seconds: 10), (){
  //     Navigator.push(context,MaterialPageRoute(builder: (context)=>bC.barchartt()));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // Timer(Duration(seconds: 10), () {
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>bC.barchartt()));
    // });

    // Future delay() async{
    //   await new Future.delayed(new Duration(seconds: 10), (){
    //     Navigator.push(context,MaterialPageRoute(builder: (context)=>bC.barchartt()));
    //   });
    // }

    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 10)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Center(
                child: charts.PieChart(
                  generateData(),
                  animate: true,
                  animationDuration: Duration(seconds: 5),
                  defaultRenderer: charts.ArcRendererConfig(
                      arcWidth: 100,
                      arcRendererDecorators: [
                        charts.ArcLabelDecorator(
                            labelPosition: charts.ArcLabelPosition.inside),
                      ]),
                ),
              ),
              // ignore: missing_return
            ),
          );
        } else {
          return AnimatedSwitcher(
            duration: Duration(seconds: 5),
            transitionBuilder: (Widget child, Animation<double> animation) =>
                ScaleTransition(
              scale: animation,
              child: child,
            ),
            child: bC.barchartt(),
          );
        }
      },
    );
  }
}

class PieData {
  String activity;
  double time;

  PieData(this.activity, this.time);
}
