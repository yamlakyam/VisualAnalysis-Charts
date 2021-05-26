import 'package:charts_in_flutterr/Piedata.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'indicator.dart';
import 'Piedata.dart';
import 'dart:async';

class PieChartSample1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChartSample1State();

  PieChartSample1();
}

class PieChartSample1State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 1,
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: PieChart(
                  PieChartData(
                      pieTouchData:
                          PieTouchData(touchCallback: (pieTouchResponse) {
                        setState(() {
                          final desiredTouch = pieTouchResponse.touchInput
                                  is! PointerExitEvent &&
                              pieTouchResponse.touchInput is! PointerUpEvent;
                          if (desiredTouch &&
                              pieTouchResponse.touchedSection != null) {
                            touchedIndex = pieTouchResponse
                                .touchedSection.touchedSectionIndex;
                          } else {
                            touchedIndex = -1;
                          }
                        });
                      }),
                      startDegreeOffset: 180,
                      borderData: FlBorderData(
                        show: false,
                      ),
                      sectionsSpace: 1,
                      centerSpaceRadius: 0,
                      sections: showingSections(touchedIndex)),
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Row(
              children: [
                Expanded(flex: 2, child: SizedBox()),
                Expanded(flex: 2, child: IndicatorsWidget()),
                Expanded(flex: 1, child: SizedBox()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections(int touchedIndex) {
    return PieData()
        .data
        .asMap()
        .map<int, PieChartSectionData>((index, data) {
          final isTouched = index == touchedIndex;
          final double fontSize = isTouched ? 13 : 12;
          final double radius = isTouched ? 55 : 50;

          final value = PieChartSectionData(
            color: data.color,
            value: data.value,
            title: '${data.value}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: data.txtColor,
            ),
            titlePositionPercentageOffset: 0.55,
          );

          return MapEntry(index, value);
        })
        .values
        .toList();
    //   List.generate(
    //   4,
    //   (i) {
    //     final isTouched = i == touchedIndex;
    //     final opacity = isTouched ? 1.0 : 0.6;
    //     switch (i) {
    //       case 0:
    //         return PieChartSectionData(
    //           color: const Color(0xffe6e7f0)
    //           // .withOpacity(opacity)
    //           ,
    //           value: 25,
    //           title: '25%',
    //           radius: 50,
    //           titleStyle: TextStyle(
    //               fontSize: 18,
    //               fontWeight: FontWeight.bold,
    //               color: const Color(0xff9592a1)),
    //           titlePositionPercentageOffset: 0.55,
    //         );
    //       case 1:
    //         return PieChartSectionData(
    //           color: const Color(0xff343351)
    //           //.withOpacity(opacity)
    //           ,
    //           value: 25,
    //           title: '25%',
    //           radius: 50,
    //           titleStyle: TextStyle(
    //               fontSize: 18,
    //               fontWeight: FontWeight.bold,
    //               color: const Color(0xffe3e4e8)),
    //           titlePositionPercentageOffset: 0.55,
    //         );
    //       case 2:
    //         return PieChartSectionData(
    //           color: const Color(0xffffcdcc)
    //           //.withOpacity(opacity)
    //           ,
    //           value: 25,
    //           title: '25%',
    //           radius: 50,
    //           titleStyle: TextStyle(
    //               fontSize: 18,
    //               fontWeight: FontWeight.bold,
    //               color: const Color(0xff645b6d)),
    //           titlePositionPercentageOffset: 0.6,
    //         );
    //       case 3:
    //         return PieChartSectionData(
    //           color: const Color(0xff5f5bf3)
    //           // .withOpacity(opacity),
    //           ,
    //           value: 25,
    //           title: '25%',
    //           radius: 50,
    //           titleStyle: TextStyle(
    //               fontSize: 18,
    //               fontWeight: FontWeight.bold,
    //               color: const Color(0xffd4d6ea)),
    //           titlePositionPercentageOffset: 0.55,
    //         );
    //       default:
    //         throw Error();
    //     }
    //   },
    // );
  }
}
