import 'package:flutter/material.dart';


class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,);
          },
          icon: Icon(
            Icons.arrow_back_outlined,

          ),
          color: Colors.grey[500],
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.blueGrey[800],
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
            Text(
              "Baraa Abshammala\n"
                  "czc@hotmail.com\n"
                  "+491732697710",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,


              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
