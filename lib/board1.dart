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
                            child: Card(
                                child: Image.asset('assets/images/logo.PNG'))),
                        Expanded(
                          flex: 4,
                          child: Column(
                            children: [
                              Text('KOOJE | Finance Portfolio Manager'),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Icon(Icons.android_rounded)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        'Android Play Store',
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        'Free * Finance * Business',
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
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                          Text('648.6K'),
                                          Text('107%'),
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
                                          Text('\$566.5k'),
                                          Text('137%'),
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
                                          Text('\$0.9'),
                                          Text('124%'),
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
                                      Text('Engagement'),
                                      Row(
                                        children: [
                                          Text('21.4%'),
                                          Text('0.4%'),
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
                                          Text('148.1k'),
                                          Text('2.8%'),
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
