import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  int age;

  double result;
  bool isMale;

  BmiResultScreen(
      {required this.age, required this.result, required this.isMale});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(20, 22, 54, 1.0),
        elevation: 50,
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: const Color.fromRGBO(20, 22, 54, 1.0),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                // alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFF1D1E33),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Text(
                      'Gender: ${isMale ? 'Male' : 'Female'}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      'Result: ${result.toStringAsFixed(1)}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(
                      'Age: $age',
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
            ),
          )),
          Container(
              width: double.infinity,
              height: 50,
              color: const Color(0xFFEB1555),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'RECALCULATE',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              )),
        ],
      ),
    );
  }
}

