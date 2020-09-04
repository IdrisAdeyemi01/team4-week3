import 'dart:convert';
import 'dart:ffi';
import 'dart:ui';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plagiarismchecker/Pages/result_page.dart';

import '../networking1.dart';

class CheckPage extends StatefulWidget {
  @override
  _CheckPageState createState() => _CheckPageState();
}
Checker _checker;

Future<Checker> checker(String textToCheck) async {
  String apiKey = 'dadcdd238b3fcab1dfadab8dede0540c';
  String apiURL = 'https://smallseotools.com/api/checkplag';
  http.Response firstResponse = await http.post(apiURL,
      body: {'key': '$apiKey', 'data': '$textToCheck'});
  if (firstResponse.statusCode == 200) {
    var res = firstResponse.body;
    var result = jsonDecode(res);
    String hash = result['hash'];
    int key = result['key'];
    bool recall = result['recall'];
    var res2;
    var result2;
    while(recall == true){
      http.Response secondResponse = await http.get('https://smallseotools.com/api/query-footprint/$hash/$key/');
      key++;
      var res2 = secondResponse.body;
      result2 = jsonDecode(res2);
      recall = result2['recall'];
    }
    print(result2);
    return checkerFromJson(res2);
  } else {
    print(firstResponse.statusCode);
  }
}

class _CheckPageState extends State<CheckPage> {

  final TextEditingController textControl = TextEditingController();

  int textNum = 0;
  Color lineColor(){
    if(textNum == 0){
      return Color(0xFFC4C4C4);
    }else if(textNum <= 500){
      return Color(0xFFFDB600);
    }else{
      return Color(0xFFFF0000);
    }
  }


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
                        Text('$textNum - 500 words',
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
                     onEditingComplete: (){

                     },
                     controller: textControl,
                     maxLines: null,
                     decoration: InputDecoration(
                       hintText: 'Place your text  here',
                         contentPadding: EdgeInsets.all(10),
                         border: OutlineInputBorder(
                             borderSide: BorderSide.none
                         )
                     ),
                     onChanged: (String text){
                       textNum = text.length;
                       setState(() {
                         lineColor();
                       });
                     },
                   )
                 ),
                  SizedBox(height: 20,),
                  Divider(
                    color: lineColor(),
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
                          onPressed: ()async{
                            final String textData = textControl.text;

                            final Checker wordToCheck = await checker(textData);
                            setState(() {
                              _checker = wordToCheck;
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultPage(plagiarisedPercent: _checker.plagPercent,
                                  uniquePercent: _checker.uniquePercent)));
                            });
                          },
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
                          onPressed: (){
                            Navigator.pop(context);
                          },
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
