import 'package:drug_reporting_app/login.dart';
import 'package:drug_reporting_app/main.dart';
import 'package:drug_reporting_app/playstore.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Apporweb extends StatefulWidget {
  const Apporweb({ Key? key }) : super(key: key);

  @override
  _ApporwebState createState() => _ApporwebState();
}

class _ApporwebState extends State<Apporweb> {
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
                      width: 400,
                      child: Text(
                        'You can continue the report in the website itself. We ensure you that any of your personal information is secured.\n But if you want a completely secure way that even your IP address is not being tracked, we request you to intsall our mobile app for reporting.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () async {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Formre()));
                      },
                      child: Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 49, 85, 179),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          'Continue in website',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    GestureDetector(
                      onTap: () async {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => play()));
                      },
                      child: Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 76, 94, 139),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          'Install app',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 400,
                      child: Text(
                        'You Protect Our Community We Protect Your Identity',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 17),
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