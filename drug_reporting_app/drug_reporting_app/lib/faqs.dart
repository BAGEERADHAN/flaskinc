import 'package:drug_reporting_app/main.dart';
import 'package:flutter/material.dart';

class Faqs extends StatefulWidget {
  const Faqs({Key? key}) : super(key: key);

  @override
  _FaqsState createState() => _FaqsState();
}

class _FaqsState extends State<Faqs> {
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
                child:GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Formre())),
                  child:Container(
                    color: Color.fromRGBO(243, 244, 246, 1),
                    child: Text("Services"),
                  ) ,
                )/* RaisedButton(
                  
                  elevation: 0,
                  child: Text(
                    "Services",
                    style: TextStyle(color: Color.fromARGB(255, 49, 85, 179)),
                  ),
                  
                ),*/
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
                )/*RaisedButton(
                  color: Color.fromRGBO(243, 244, 246, 1),
                  elevation: 0,
                  child: Text(
                    "FAQs",
                    style: TextStyle(color: Color.fromARGB(255, 49, 85, 179)),
                  ),
                  onPressed: () => 
                ),*/
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
                child: ListView(
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
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        'FAQs',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ExpansionTile(
                      title: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "How do anonymous tips work?",
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                              "If you’re wondering where to report drug trafficking without having to worry about confidentiality, WeTip provides  the service you need. When you call WeTip’s line to submit an anonymous police tip (or you submit an anonymous police report online), your name is never disclosed publicly. Instead, the tipster is given a code number that he or she uses for all future communications with WeTip. The tipster is asked to keep full confidentiality and anonymity when they report crime anonymously."),
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text("How do police handle anonymous tips?"),
                      children: [
                        Text(
                            "The police would review the submitted crime tip and confirm its legitimacy. If the information of the reported crime tip turns out to be part of an ongoing investigation, the information is included in a warrant affidavit. That alone won’t be enough to issue a search or arrest warrant but the submitted crime tip information could play a key role in the follow-up actions that would lead to a warrant.")
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                          "How to remain anonymous when reporting a crime?"),
                      children: [
                        Text(
                            "If you're concerned about your safety it's only natural to wonder how to report drug dealers or how to report a drug house anonymously. It’s recommended to use a crime reporting agency such as WeTip that guarantees your anonymous tips to police remain anonymous. By using an anonymous drug tip line or a probation violator tip line, you can send a tip to report drug activity online (or other criminal activity) without giving your name.")
                      ],
                    ),
                    ExpansionTile(
                      title: Text("Q1"),
                      children: [Text("A1")],
                    ),
                    ExpansionTile(
                      title: Text("Q2"),
                      children: [Text("A2")],
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
