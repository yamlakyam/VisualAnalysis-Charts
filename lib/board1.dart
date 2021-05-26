import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'boardlinechart.dart' as bLC;
import 'boardpiechart.dart' as bPC;

class Board1 extends StatefulWidget {
  @override
  _Board1State createState() => _Board1State();
}

class _Board1State extends State<Board1> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xffffffff),
          body: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                //the overall
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //the top left corner
                      children: [
                        Expanded(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Card(
                                  // shape: RoundedRectangleBorder(
                                  //     borderRadius: BorderRadius.circular(15)),
                                  //margin: EdgeInsets.only(top:5),
                                  child: Image.asset('assets/images/logo.PNG')),
                            )),
                        SizedBox(width: 20),
                        Expanded(
                          flex: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: SizedBox(
                                  height: 1,
                                ),
                              ),
                              Expanded(
                                flex:1,
                                child: Text(
                                  'KOOJE | Finance Portfolio Manager',
                                ),
                              ),

                              Expanded(
                                flex:1,
                                child: Row(
                                  children: [
                                    Icon(Icons.android_rounded),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Android Play Store',
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Free * Finance * Business',
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                  flex: 4,
                                  child: SizedBox(
                                    height: 1,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              dataLists('Downloads', '648.6K', '107%'),
                              dataLists('Total Revenue', '\$566.5K', '137%'),
                              dataLists('ARPU', '\$0.9', '124%'),
                              dataLists('Enagagement', '21.4%', '0.4%'),
                              dataLists('DAU', '148.1K', '2.8%'),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      bLC.LineChartSample2()
                                    ],
                                  )),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: bPC.PieChartSample1(),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: bPC.PieChartSample1(),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: bPC.PieChartSample1(),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

class dataLists extends StatelessWidget {
  String title, txt1, percentage;

  dataLists(this.title, this.txt1,
      this.percentage); // dataLists(this.title, this.txt1, this.percentage);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 10.0,
        child: Column(
          children: [
            SizedBox(height: 15),
            Row(children: [
              SizedBox(width: 20),
              Text(
                title,
              ),
            ]),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  txt1,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Text(
                  percentage,
                  style: TextStyle(color: Color(0xff35c894)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
