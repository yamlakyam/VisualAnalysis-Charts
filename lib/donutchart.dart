import 'package:flutter/material.dart';
import 'dart:async';
import 'board1.dart' as board1;

class DonutChart extends StatefulWidget {
  const DonutChart({Key key}) : super(key: key);

  @override
  _DonutChartState createState() => _DonutChartState();
}

class _DonutChartState extends State<DonutChart> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((value) => Navigator.push(
        context,
        PageRouteBuilder(
            transitionDuration: Duration(seconds: 2),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secAnimation,
                Widget child) {
              animation =
                  CurvedAnimation(parent: animation, curve: Curves.easeOutCirc);
              return
                // ScaleTransition(
                //   scale: animation, alignment: Alignment.bottomLeft, child: child);
                RotationTransition(turns: animation,alignment: Alignment.center,child:child,);
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secAnimation) {
              return board1.Board1();
            })));
  }

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
