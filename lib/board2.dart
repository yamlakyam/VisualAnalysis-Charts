import 'package:flutter/material.dart';

class Board2 extends StatefulWidget {
  @override
  _Board2State createState() => _Board2State();
}

class _Board2State extends State<Board2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Row(
        children: [
          Column(
            children: [
              Card(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text('Uers'),
                        Text('46468'),
                        Row(
                          children: [
                            Text('+33,32%'),
                            Text('vs last week'),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Sessions'),
                        Text('98.3K'),
                        Row(
                          children: [
                            Text('+18.77%'),
                            Text('vs last week'),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Avg. Session Duration'),
                        Text('3m 40sec'),
                        Row(
                          children: [
                            Text('5.77%'),
                            Text('vs last week'),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Bounce Rate'),
                        Text('45.72%'),
                        Row(
                          children: [
                            Text('13.16%'),
                            Text('vs last week'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Text('Daily Active Users'),
                  ],
                ),
              ),
              Row(
                children: [
                  Card(
                    child: Column(
                      children: [Text('Demography')],
                    ),
                  ),
                  Card(
                    child: Column(children: [
                      Text('Gender'),
                    ]),
                  ),
                  Card(
                    child: Column(
                      children: [Text('Operating systems')],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Card(
            child: Column(
              children: [
                Text('Installs'),
                Text('Popular pages'),
                Text('Event actions'),
              ], //the three list on the right
            ),
          )
        ],
      ),
    );
  }
}
