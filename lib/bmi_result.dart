import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BmiResultScreen extends StatelessWidget {

  final bool? isMale;
  final double? result;
  final int? age;

  BmiResultScreen({
    this.isMale,
    this.age,
    this.result,
  });


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "BMI Result",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blueGrey[800],
          shadowColor: Colors.transparent,
          leading: IconButton(
            onPressed:(){
              Navigator.pop(context);
            } ,
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.grey[500],
            ),
          ),
        ),
        body: Container(
          color: Colors.blueGrey[800],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Gender : ${ isMale! ? "Male" : "Female" } ",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.bold,
                          fontSize: 30,

                        ),
                      ),
                    ),
                    Container(
                      child: Text("Age: $age",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.bold,
                          fontSize: 30,

                        ),
                      ),
                    ),
                    Container(
                      child: Text("Result: ${result!.round()}",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.bold,
                          fontSize: 30,

                        ),
                      ),
                    ),
                  ],
                ),
              ],
          ),
        ),
      ),
    );
  }
}
