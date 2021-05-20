import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart';
import 'dart:async';
import 'donutchart.dart' as dC;
import 'package:charts_flutter/flutter.dart' as charts;
import 'dart:math';

class barchartt extends StatefulWidget {
  @override
  _barcharttState createState() => _barcharttState();
}

class _barcharttState extends State<barchartt> {
  List<charts.Series> seriesList;

  static List<charts.Series<Sales, String>> _createData() {
    final random = Random();
    final SalesData = [
      Sales('2012', random.nextInt(10000)),
      Sales('2013', random.nextInt(10000)),
      Sales('2014', random.nextInt(10000)),
      Sales('2015', random.nextInt(10000)),
      Sales('2016', random.nextInt(10000)),
      Sales('2017', random.nextInt(10000)),
      Sales('2018', random.nextInt(10000)),
      Sales('2019', random.nextInt(10000)),
      Sales('2020', random.nextInt(10000)),
    ];
    return [
      charts.Series<Sales, String>(
          id: 'Sales',
          data: SalesData,
          domainFn: (Sales sales, _) => sales.year,
          measureFn: (Sales sales, _) => sales.amount)
    ];
  }

  barChart() {
    return charts.BarChart(seriesList, animate: true, vertical: true);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    seriesList = _createData();

    Future.delayed(Duration(seconds: 1)).then((value) => Navigator.push(
        context,
        PageRouteBuilder(
            transitionDuration: Duration(seconds: 2),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secAnimation,
                Widget child) {
              animation =
                  CurvedAnimation(parent: animation, curve: Curves.elasticIn);
              return ScaleTransition(
                  scale: animation, alignment: Alignment.center, child: child);
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secAnimation) {
              return dC.DonutChart();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.amberAccent,
          body: Center(
            child: barChart(),
          ),
        ));
  }
}

class Sales {
  String year;
  int amount;

  Sales(this.year, this.amount);
}
