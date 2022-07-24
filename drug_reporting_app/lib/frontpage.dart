import 'package:drug_reporting_app/login.dart';
import 'package:drug_reporting_app/main.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'apporweb.dart';

class Front extends StatefulWidget {
  const Front({Key? key}) : super(key: key);

  @override
  _FrontState createState() => _FrontState();
}

class _FrontState extends State<Front> {
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
                        'To report a drug crime anonymously online, all you need is to submit a form. Our application promises and ensures absolute anonymity, not just confidentiality. This app also provides intelligence and information to local, state, federal and international law enforcement agencies relating to illegal drug activity.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 270,
                      child: Image(
                        image: AssetImage("images/he.png"),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () async {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Apporweb()));
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
                          'Report',
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
                            MaterialPageRoute(builder: (context) => login()));
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
                          'Admin Login',
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
