import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckPage extends StatefulWidget {
  @override
  _CheckPageState createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
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
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 10, top: 25, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Check Plagiarism',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),),
                        Text('0 - 500 words',
                        style: TextStyle(
                          fontSize: 20
                        ),)
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 14,
                    height: 30,
                    color: Color(0xFFFFD874),
                  ),
                 Container(
                   decoration: BoxDecoration(
                     color: Colors.black12,
                     borderRadius: BorderRadius.all(Radius.circular(5)),

                   ),
                   margin: EdgeInsets.only(left: 23, right: 10),
                   height: 450,
                   child: TextField(
                     decoration: InputDecoration(
                       hintText: 'Place your text  here',
//                       filled: true,
//                       fillColor: Colors.grey[40],
                         contentPadding: EdgeInsets.all(10),
                         border: OutlineInputBorder(
                             borderSide: BorderSide.none
                         )
                     ),
                   )
                 ),
                  SizedBox(height: 20,),
                  Divider(
                    color: Color(0xFFC4C4C4),
                    height: 5,
                    thickness: 5,
                  ),

                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 23, right: 23, top: 50),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: FlatButton(
                          onPressed: (){},
                          child: Container(

                            height: 78,
                            width: 163,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                              color: Color(0xFFFFD874)
                            ),
                            child: Center(child: Text('RUN')),
                          ),
                        ),
                      ),
                      Expanded(
                        child: FlatButton(
                          onPressed: (){},
                          child: Container(
                            height: 78,
                            width: 163,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              border: Border.all(
                                color: Color(0xFFFFD874)
                              )
                            ),
                            child: Center(child: Text('CANCEL')),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
