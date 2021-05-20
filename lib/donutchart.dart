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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Welcome'),
              Text('to the third page'),
            ],
          ),
        ),
      ),
    );
  }
}
