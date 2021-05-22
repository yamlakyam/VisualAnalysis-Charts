import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Board1 extends StatefulWidget {
  @override
  _Board1State createState() => _Board1State();
}

class _Board1State extends State<Board1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xfffafafa),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'KOOJE | Finance Portfolio Manager',
                              ),
                              Row(
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
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Card(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  elevation: 10.0,
                                  child: Column(
                                    children: [
                                      Text('Downloads'),
                                      Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Text(
                                            '648.6K',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '107%',
                                            style: TextStyle(
                                                color: Color(0xff35c894)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Card(
                                  elevation: 10.0,
                                  child: Column(
                                    children: [
                                      Text('Total Revenue'),
                                      Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Text(
                                            '\$566.5k',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '137%',
                                            style: TextStyle(
                                                color: Color(0xff35c894)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Card(
                                  elevation: 10.0,
                                  child: Column(
                                    children: [
                                      Text('ARPU'),
                                      Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Text(
                                            '\$0.9',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '124%',
                                            style: TextStyle(
                                                color: Color(0xff35c894)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Card(
                                  elevation: 10.0,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 15),
                                      Row(children: [
                                        SizedBox(width: 20),
                                        Text(
                                          'Engagement',
                                        ),
                                      ]),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Text(
                                            '21.4%',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '0.4%',
                                            style: TextStyle(
                                                color: Color(0xff35c894)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Card(
                                  elevation: 10.0,
                                  child: Column(
                                    children: [
                                      Text('DAU'),
                                      Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Text(
                                            '148.1k',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '2.8%',
                                            style: TextStyle(
                                                color: Color(0xff35c894)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('The Line Graph'),
                              Row(
                                children: [
                                  Text('piechart'),
                                  Text('piechart2'),
                                  Text('piechart3'),
                                ],
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
