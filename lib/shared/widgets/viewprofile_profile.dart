import 'package:flutter/material.dart';

class BtnViewProfile extends StatefulWidget {
  @override
  _BtnViewProfileState createState() => _BtnViewProfileState();
}

class _BtnViewProfileState extends State<BtnViewProfile> {
  bool hide = false;
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      backgroundColor: Colors.blueGrey,
      primary: Colors.white,
      padding: EdgeInsets.all(13),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))));
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          Column(
            children: [
              Text(
                "Tên Sinh Viên",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "University of Technology and Education",
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                "University of Da Nang",
                style: TextStyle(
                    fontSize: 11.0,
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    elevation: 2.0,
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                        child: Text(
                          "MSSV: 1200 321 342 ",
                          style: TextStyle(
                              letterSpacing: 2.0, fontWeight: FontWeight.w700),
                        ))),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    elevation: 2.0,
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                        child: Text(
                          "Class: 18CT1",
                          style: TextStyle(
                              letterSpacing: 2.0, fontWeight: FontWeight.w700),
                        ))),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    elevation: 2.0,
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                        child: Text(
                          "Brith day: 12/12/2000",
                          style: TextStyle(
                              letterSpacing: 2.0, fontWeight: FontWeight.w700),
                        ))),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    elevation: 2.0,
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                        child: Text(
                          "Industry: Công nghệ thông tin",
                          style: TextStyle(
                              letterSpacing: 2.0, fontWeight: FontWeight.w700),
                        ))),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    elevation: 2.0,
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                        child: Text(
                          "Course: AKSM_K2018",
                          style: TextStyle(
                              letterSpacing: 2.0, fontWeight: FontWeight.w700),
                        ))),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "------------Learning-------------",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black45,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "DONE",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "104",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "TOTAL",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "150",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ],
      ),
    ]);
  }
}
