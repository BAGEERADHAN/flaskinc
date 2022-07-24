import 'dart:convert';
import 'package:drug_reporting_app/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'faqs.dart';
import 'user_model.dart';

class Next extends StatefulWidget {
  final String street;
  final String dateget;
  final String drugtype;

  const Next({Key? key,required this.street,required this.dateget,required this.drugtype}) : super(key: key);

  @override
  _NextState createState() => _NextState(street, dateget, drugtype);
}

class _NextState extends State<Next> {
  
  String street;
  String dateget;
  String drugtype;
   
  final url1 = "https://flask-spam-filter.herokuapp.com/spam_filter?string=";
  final _tc1 = TextEditingController();
    final _tc2 = TextEditingController();
  final _tc3 = TextEditingController();
  int j=0;
 
  var _postjson = [];
  String a = '';
 
  _NextState(this.street, this.dateget, this.drugtype);
  
  Future<UserModel> createUser(String accusedDetail,
    String addressLocation,
    String detailedDesc,
    String severity,
    String shortDesc,
    String time,
    String typeDrug) async{
      
  final String apiUrl = "https://2ad6-117-239-78-56.in.ngrok.io/data/create";

  final response = await http.post(Uri.parse(apiUrl), body: {
    "accused_detail": accusedDetail ,
    "address_location":street ,
    "detailed_desc":detailedDesc,
    "severity": severity, 
    "short_desc":detailedDesc,
    "time":dateget,
    "type_drug":drugtype,
      });
    if(response.statusCode == 201){
    final String responseString = response.body;
    
    return userModelFromJson(responseString);
  }else{
    final String responseString = response.body;
    return userModelFromJson(responseString);
  }

}
  
  void fetchPost(String url) async {
    try {
      final response = await http.get(Uri.parse(url));

      final jsonData = jsonDecode(response.body) as List;
      setState(() {
        _postjson = jsonData;
      });
      print(response.body);
    } catch (err) {}
  }
 
  @override
  Widget build(BuildContext context) {
    var _currentSliderValue;
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
                child:GestureDetector(
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
                fit: BoxFit.fitHeight,
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
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Drug Reporting ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 70,
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
                        controller: _tc2,
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
                           
                          });
                        },
                      ),
                      
                     
                      SizedBox(
                        height: 20,
                      ),
                       Container(
                        width: 400,
                        child: Text(
                          'Severity in between 1 and 10',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: _tc3,
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
                            
                          });
                        },
                      ),
                     /* Slider(
      value: _currentSliderValue,
      max: 10,
      divisions: 1,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
final String severity = _currentSliderValue.toString();
        });
      },
    ),*/
                      SizedBox(
                        height: 20,
                      ),
                    Container(
                      width: 400,
                      child: Text(
                        'Description',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: _tc1,
                      maxLines: 5,
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
                          a = val;
                        
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(height: 20),
                     GestureDetector(
                      onTap: ()=> Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Formre())),
                      child: Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 49, 85, 179),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          'Back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () async {
                         j++;
                        showDialog(context: context, builder:(context){
                          return Dialog(
                            backgroundColor: Colors.white,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text("Generated ID for the complaint: $j"),
                              )),
                          );
                        });
                        final String accused_details = _tc2.text;
                        final String detailed_desc = _tc1.text;
                        final String severity = _tc3.text;
                        String url2;
                        print(url1 + a);
                        
                        final UserModel user = await createUser(accused_details,street,detailed_desc,severity,detailed_desc,dateget,drugtype);
                        late UserModel _user;
                        setState(() {
                          _user = user;
                        });
                       print ("${_user.id}");
                        
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
                          'Submit',
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
        ],
      ),
      backgroundColor: Color.fromRGBO(243, 244, 246, 1),
    );
  }
}
