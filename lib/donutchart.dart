import 'package:flutter/material.dart';

class DonutChart extends StatefulWidget {
  const DonutChart({Key key}) : super(key: key);

  @override
  _DonutChartState createState() => _DonutChartState();
}

class _DonutChartState extends State<DonutChart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Welcome'),
            Text('to the third page'),
          ],
        ),
      ),
    );
  }
}
