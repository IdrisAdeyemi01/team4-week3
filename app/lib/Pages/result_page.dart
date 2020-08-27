import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFCF5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFDB600),
        toolbarHeight: 70,
        title: Image.asset('images/logo.png', color: Colors.white,),
        actions: [
          FlatButton(
              onPressed: (){},
              child: Image.asset('images/home-icon.png')),
          FlatButton(
              onPressed: (){},
              child: Image.asset('images/nav-icon.png',
                color: Colors.white, )),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Result',
                  style: TextStyle(
                    fontSize: 24,
                  ),),
                  Image.asset('images/download-icon.png')
                ],
              ),
              Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Container(
                                    width: 100,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(15)
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xFFFFEDBF),
                                          blurRadius: 5
                                        )
                                      ]
                                    ),
                                    child: Center(
                                      child: Image.asset('images/red-mark.png'),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text('75%',
                                  style: TextStyle(
                                    color: Color(0xFFFF0000),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24
                                  ),),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text('Plagiarised',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                  ),),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Container(
                                    width: 100,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(15)
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFFFFEDBF),
                                            blurRadius: 5
                                          )
                                        ]
                                    ),
                                    child: Center(
                                      child: Image.asset('images/green-mark.png'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text('75%',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24
                                    ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text('Unique',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                    ),),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Text('A Bresse house (French: Ferme bressane) is a type of farmhouse found in the Bresse region and characterized by its long length, brick walls and wooden roof.'),
                  SizedBox(height: 15,),
                  Text('A Bresse house (French: Ferme bressane) is a type of farmhouse found in the Bresse region and characterized by its long length, brick walls and wooden roof.'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
