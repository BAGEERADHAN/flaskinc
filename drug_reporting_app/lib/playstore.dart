import 'package:drug_reporting_app/login.dart';
import 'package:drug_reporting_app/main.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class play extends StatelessWidget {
  const play({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              child: Image(
                image: AssetImage(
                  "images/f2.png",
                ),
                fit: BoxFit.fitHeight,
              )),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              height: 800,
              width: 500,
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'PREKSHA ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
              
                    Container(
                      height: 500,
                      child: Image(
                        image: AssetImage("images/app.jpg"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(243, 244, 246, 1),
    );
  }
}