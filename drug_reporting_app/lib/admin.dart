import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Admin extends StatefulWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  var _postjson = [];
  String a = '';
  
   fetchPost() async {
//https://2ad6-117-239-78-56.in.ngrok.io/data
    try {
   final response = await http.get(Uri.parse( 'https://2ad6-117-239-78-56.in.ngrok.io/data')
       ,
   );
      final jsonData = jsonDecode(response.body) as List;
     // List<User> users = [];
print(jsonData);
     /* for(var u in jsonData)
      {
        print(u);
        User user = User(u['id'],u['spam']);
        users.add(user);
      }*/
     
      //return users;
      setState(() {
        _postjson = jsonData;
      });
    } catch (err) {
      print(err);
    }
  }

  

  @override
  void initState()
  {
    super.initState();
    fetchPost();
    
  }
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
              child: ListView.builder(
        itemCount: _postjson.length,
        itemBuilder: ( ontext,int i){
          final post = _postjson[i];
          return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Center(
                              child: Container(
                                color: Color.fromARGB(255, 252, 252, 252),
                                child: Column(
                                  children: [

                                    Row(
                                      children: [
                                         Text(
                                          'Detailed Desription :',
                                          style: TextStyle(
                                              fontFamily: 'FredokaOne', fontSize: 20),
                                        ),
                                        SizedBox(width: 20,),
                                        Text(
                                          '${post["detailed_desc"]}',
                                          style: TextStyle(
                                              fontFamily: 'FredokaOne', fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      children: [
                                         Text(
                                          'Location :',
                                          style: TextStyle(
                                              fontFamily: 'FredokaOne', fontSize: 20),
                                        ),
                                        SizedBox(width: 20,),
                                        Text(
                                          '${post["address_location"]}',
                                          style: TextStyle(
                                              fontFamily: 'FredokaOne', fontSize: 15),
                                        ),
                                      ],
                                    ),
                                     SizedBox(height: 20,),
                                    Row(
                                      children: [
                                         Text(
                                          'Person Accused if any :',
                                          style: TextStyle(
                                              fontFamily: 'FredokaOne', fontSize: 20),
                                        ),
                                        SizedBox(width: 20,),
                                        Text(
                                          '${post["accused_detail"]}',
                                          style: TextStyle(
                                              fontFamily: 'FredokaOne', fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      children: [
                                         Text(
                                          'Severity of the situation :',
                                          style: TextStyle(
                                              fontFamily: 'FredokaOne', fontSize: 20),
                                        ),
                                        SizedBox(width: 20,),
                                        Text(
                                          '${post["severity"]}',
                                          style: TextStyle(
                                              fontFamily: 'FredokaOne', fontSize: 15),
                                        ),
                                      ],
                                    ),
                                     
                                     SizedBox(height: 20,),
                                    Row(
                                      children: [
                                         Text(
                                          'Spam or Not :',
                                          style: TextStyle(
                                              fontFamily: 'FredokaOne', fontSize: 20),
                                        ),
                                        SizedBox(width: 20,),
                                        Text(
                                          '${post["spam"]}',
                                          style: TextStyle(
                                              fontFamily: 'FredokaOne', fontSize: 15),
                                        ),
                                      ],
                                    ),
                                   
                                     SizedBox(height: 20,),
                                    Row(
                                      children: [
                                         Text(
                                          'Date And Time :',
                                          style: TextStyle(
                                              fontFamily: 'FredokaOne', fontSize: 20),
                                        ),
                                        SizedBox(width: 20,),
                                        Text(
                                          '${post["time"]}',
                                          style: TextStyle(
                                              fontFamily: 'FredokaOne', fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  
                                     SizedBox(height: 20,),
                                    Row(
                                      children: [
                                         Text(
                                          'Drug Used if known :',
                                          style: TextStyle(
                                              fontFamily: 'FredokaOne', fontSize: 20),
                                        ),
                                        SizedBox(width: 20,),
                                        Text(
                                          '${post["type_drug"]}',
                                          style: TextStyle(
                                              fontFamily: 'FredokaOne', fontSize: 15),
                                        ),
                                      ],
                                    ),
                                     SizedBox(height: 20,),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 9,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 202, 209, 226),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                          "Complaint ID $i",
                            style: TextStyle(fontFamily: 'FredokaOne', fontSize: 22),
                          ),
                          Text(
                            '${post["spam"]}',
                            style: TextStyle(fontFamily: 'FredokaOne', fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          );
        }
        ),
            ),
          ),
        ],
      ),
    );
  }
}

class User 
{
  final String id , spam;
  User(this.id,this.spam);
}