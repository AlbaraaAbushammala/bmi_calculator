import 'package:bmi_calculator/bmi_screen.dart';
import 'package:flutter/material.dart';

class BmiHomeScreen extends StatefulWidget {
  const BmiHomeScreen({Key? key}) : super(key: key);

  @override
  _BmiHomeScreenState createState() => _BmiHomeScreenState();
}

class _BmiHomeScreenState extends State<BmiHomeScreen> {
  @override 
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(

          onPressed: (){
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BmiScreen()),
              );
            });
          },
          backgroundColor: Colors.blueGrey,
          child: Text(" > ",
            style:TextStyle(
              fontSize: 35,
            ),
          ),
        ) ,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/Images/StartScreen.png"),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(  // للتعامل مع عرض كل الشاشات وما يحصل اورور
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Text(
                        " BMI ",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Text(
                        " CALCULATOR ",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
