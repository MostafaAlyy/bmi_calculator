import 'package:flutter/material.dart';

class Resultscreen extends StatelessWidget {
  dynamic result = 0;
  Resultscreen({required this.result});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'BMI RESULT',
        )),
        backgroundColor: Color.fromARGB(255, 5, 0, 45),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 62, 20, 0)),
        child: Center(
            child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(15)),
                height: 200,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Result: ${result.round()}",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          ),
        )),
      ),
    );
  }
}
