// ignore_for_file: use_key_in_widget_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import './REsult_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool ismale = true;
  double hight = 120.01;
  int wight = 50, age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'BMI Calculator',
          )),
          backgroundColor: Color.fromARGB(255, 5, 0, 45),
        ),
        body: Column(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(color: Color.fromARGB(255, 10, 0, 62)),
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (() => {
                                setState(() {
                                  ismale = true;
                                })
                              }),
                          child: Container(
                            child: Column(
                              children: [
                                Icon(Icons.male, size: 100),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 24),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: ismale ? Colors.red : Colors.grey[400],
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (() {
                            setState(() {
                              ismale = false;
                            });
                          }),
                          child: Container(
                            child: Column(
                              children: [
                                Icon(Icons.female, size: 100),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 24),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: !ismale ? Colors.red : Colors.grey[400],
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
            Expanded(
                child: Container(
              decoration: BoxDecoration(color: Color.fromARGB(255, 10, 0, 62)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "${hight.round()}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 36),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ]),
                      Slider(
                        value: hight,
                        onChanged: (value) {
                          setState(() {
                            hight = value;
                          });
                        },
                        min: 80,
                        max: 220,
                        thumbColor: Colors.red,
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: double.infinity,
                ),
              ),
            )),
            Expanded(
                child: Container(
              decoration: BoxDecoration(color: Color.fromARGB(255, 10, 0, 62)),
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  "WEIGHT",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 24),
                                ),
                                Text(
                                  "$wight",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 36),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      heroTag: "minusbutton",
                                      onPressed: () {
                                        setState(() {
                                          wight--;
                                        });
                                      },
                                      child: Icon(Icons.remove),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    FloatingActionButton(
                                      heroTag: "plusbutton",
                                      onPressed: () {
                                        setState(() {
                                          wight++;
                                        });
                                      },
                                      child: Icon(Icons.add),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  "AGE",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 24),
                                ),
                                Text(
                                  "$age",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 36),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      heroTag: "minusbutton2",
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      child: Icon(Icons.remove),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    FloatingActionButton(
                                      heroTag: "plusbutton2",
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      child: Icon(Icons.add),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
            Container(
              width: double.infinity,
              height: 60,
              child: MaterialButton(
                child: Text("Calculate"),
                onPressed: () {
                  double result = wight / pow(hight.round() / 100, 2);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Resultscreen(result: result)));
                },
                color: Colors.red,
              ),
            ),
          ],
        ));
  }
}
