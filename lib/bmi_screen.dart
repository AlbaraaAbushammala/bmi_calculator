import 'dart:math';
import 'package:bmi_calculator/bmi_result.dart';
import 'package:bmi_calculator/info_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 120;
  var weight = 65;
  var age = 22;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context,);
            },
            icon: Icon(
              Icons.arrow_back_outlined,

            ),
            color: Colors.grey[500],
          ),
          centerTitle: true,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.blueGrey[800],
          actions: [
            IconButton(
              color: Colors.grey,
              onPressed: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InfoScreen()
                      )
                  );
                });
              },
              icon: Icon(Icons.info_outline),
            )
          ],
          title: Text(
            "BMI CALCULATOR",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(

          color: Colors.blueGrey[800],
          child: Column(

            children: [
              _DefultHeightEmpty(5),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:
                              isMale ? Colors.red[900] : Colors.grey[900],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage("assets/Images/Male.png"),
                                  height: 90,
                                  width: 70,
                                  color: Colors.white,
                                ),
                                _DefultHeightEmpty(5),
                                _buildText("MALE"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      _DefultWidthEmpty(10),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage("assets/Images/Female.png"),
                                  height: 90,
                                  width: 110,
                                  color: Colors.white,
                                ),
                                _DefultHeightEmpty(5),
                                _buildText("FEMALE"),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:
                              !isMale ? Colors.red[900] : Colors.grey[900],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[900]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildText("HEIGHT"),
                            _DefultHeightEmpty(5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.ideographic,
                              children: [
                                Text(
                                  "${height.round()}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50,
                                  ),
                                ),
                                _DefultWidthEmpty(5),
                                _buildText("cm"),
                              ],
                            ),
                            _DefultHeightEmpty(10),
                            Container(
                              width: 350,
                              child: Slider(
                                inactiveColor: Colors.grey[800],
                                activeColor: Colors.grey[400],
                                thumbColor: Colors.red,
                                min: 100,
                                max: 240,
                                value: height,
                                onChanged: (context) {
                                  setState(() {
                                    height = context;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[900]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildText("WEIGHT"),
                              _buildNumber(weight),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor: Colors.grey[700],
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    heroTag: "weight-",
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  _DefultWidthEmpty(7),
                                  FloatingActionButton(
                                    backgroundColor: Colors.grey[700],
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    heroTag: "weight+",
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      _DefultWidthEmpty(10),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildText("AGE"),
                              _buildNumber(age),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor: Colors.grey[700],
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    heroTag: "age",
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  _DefultWidthEmpty(7),
                                  FloatingActionButton(
                                    backgroundColor: Colors.grey[700],
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    heroTag: "age-",
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[900]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.red[900],
                width: double.infinity,
                child: MaterialButton(
                  height: 50,
                  onPressed: () {
                    double result = weight / pow(height / 100, 2);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BmiResultScreen(
                                  isMale: isMale,
                                  age: age,
                                  result: result,
                                )));
                  },
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildText(var value) {
    return Text(
      "$value",
      style: TextStyle(
        color: Colors.grey[500],
        fontWeight: FontWeight.bold,
        fontSize: 21,
      ),
    );
  }

  Widget _buildNumber(var number) {
    return Text(
      "$number",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 50,
      ),
    );
  }

  Widget _DefultWidthEmpty(double width) {
    return SizedBox(
      width: width,
    );
  }

  Widget _DefultHeightEmpty(double height) {
    return SizedBox(
      height: height,
    );
  }
}
