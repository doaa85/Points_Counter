import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  void addOnePoint() {
    print('add one point');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text('points counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ), //TextStyle
                      ),
                      Text(
                        '$teamAPoints',
                        style: TextStyle(
                          fontSize: 150,
                        ), //TextStyle
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                          print(teamAPoints);
                        },
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                          print(teamAPoints);
                        },
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                          print(teamAPoints);
                        },
                        child: Text(
                          'Add 3 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ), //TextStyle
                      ),
                      Text(
                        '$teamAPoints',

                        style: TextStyle(
                          fontSize: 150,
                        ), //TextStyle
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                          print(teamAPoints);
                        },
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                          print(teamAPoints);
                        },
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                          print(teamAPoints);
                        },
                        child: Text(
                          'Add 3 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(8),
                    primary: Colors.orange,
                    minimumSize: Size(150, 50)),
                onPressed: () {
                  teamAPoints = 0;
                  teamBPoints = 0;
                },
                child: Text(
                  ' Reset ',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ],
          )),
    );
  }
}
