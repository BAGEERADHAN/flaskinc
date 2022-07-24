import 'package:drug_reporting_app/admin.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final _fkey = GlobalKey<FormState>();
  final _t1 = TextEditingController();
  final _t2 = TextEditingController();
  bool is1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 244, 246, 1),
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              child: Image(
                image: AssetImage(
                  "images/f2.png",
                ),
                fit: BoxFit.fitWidth,
              )),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              height: 700,
              width: 500,
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Form(
                key: _fkey,
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
                        height: 70,
                      ),
                      /*  Visibility(
                          visible: is1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Wrong Credentials!!!",
                              style: TextStyle(color: Colors.red),
                            ),
                          )),*/
                      Container(
                        width: 400,
                        child: Text(
                          'Username',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(254, 137, 58, 1),
                                  width: 5,
                                )),
                            contentPadding: EdgeInsets.fromLTRB(15, 5, 5, 5),
                            filled: true,
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(115, 141, 208, 1),
                                  width: 2,
                                ))),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() {
                            print(_t1);
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 400,
                        child: Text(
                          'Password',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        obscureText: true,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(254, 137, 58, 1),
                                  width: 5,
                                )),
                            contentPadding: EdgeInsets.fromLTRB(15, 5, 5, 5),
                            filled: true,
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(115, 141, 208, 1),
                                  width: 2,
                                ))),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() {
                            print(_t2);
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () async {
                          if (_t1 == 'Admin@admin' && _t2 == 'password') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Admin()));
                          } else {
                            is1 = true;
                          }
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
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
