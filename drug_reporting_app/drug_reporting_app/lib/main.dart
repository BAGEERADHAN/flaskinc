import 'package:drug_reporting_app/frontpage.dart';
import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'package:checkmark/checkmark.dart';
import 'form1.dart';
import 'faqs.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Front(),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Color.fromARGB(255, 49, 85, 179),
          ),
          backgroundColor: Color.fromRGBO(243, 244, 246, 1),
          title: Text(''),
          shadowColor: Color.fromARGB(0, 105, 61, 61),
        ),
      ),
    );
  }
}

class Formre extends StatefulWidget {
  @override
  _FormreState createState() => _FormreState();
}

class _FormreState extends State<Formre> {
  bool loading = false;

  final _formkey = GlobalKey<FormState>();
  final _tc1 = TextEditingController();
  final _tc2 = TextEditingController();
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 15,
            ),
            Builder(
              builder: (context) => Center(
                child: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Formre())),
                  child:Container(
                    color: Color.fromRGBO(243, 244, 246, 1),
                    child: Text("Services"),
                  ) ,
                )
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Builder(
              builder: (context) => Center(
                child: GestureDetector(
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Faqs())),
                  child:Container(
                    color: Color.fromRGBO(243, 244, 246, 1),
                    child: Text("FAQs"),
                  ) ,
                )
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 49, 85, 179),
        ),
        backgroundColor: Color.fromRGBO(243, 244, 246, 1),
        title: Text(''),
        shadowColor: Color.fromARGB(0, 105, 61, 61),
      ),
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
                key: _formkey,
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
                        height: 20,
                      ),
                      Text(
                        ' NOTE: If you witness an event that may lead to immediate threat to human health or safety, you should report it to your local police or law enforcement authority.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Container(
                        width: 400,
                        child: Text(
                          "Date and Time Witnessed",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      DateTimeField(
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
                          selectedDate: selectedDate,
                          onDateSelected: (DateTime value) {
                            setState(() {
                              selectedDate = value;
                            });
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 400,
                        child: Text(
                          'Place',
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
                            print(_tc1);
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 400,
                        child: Text(
                          'Do you have any info regard suspect',
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
                            print(_tc1);
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 400,
                        child: Text(
                          'is there any vehicle involved',
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
                            print(_tc1);
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 400,
                        child: Row(
                          children: [],
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Next()));
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
                            'Next',
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
      backgroundColor: Color.fromRGBO(243, 244, 246, 1),
    );
  }
}
