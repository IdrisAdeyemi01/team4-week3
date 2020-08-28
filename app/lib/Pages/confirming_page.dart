import 'package:flutter/material.dart';

class ConfirmingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFCF5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFDB600),
        toolbarHeight: 70,
        title: Image.asset('images/logo.png',
            color: Colors.white),
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
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/green-mark.png',
              height: 100,
              width: 100,),
            SizedBox(height: 15,),
            Text('Download Successful',
            style: TextStyle(
              fontSize: 24
            ),),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        color: Color(0xFFFFD874),

                      )
                  ),
                  child: Center(
                    child: Text('Share Report',
                      style: TextStyle(
                        fontSize: 18,
                      ),),
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFD874),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                    child: Text('Exit',
                      style: TextStyle(
                        fontSize: 18,
                      ),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Back',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFFFDB600),
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFFFDB600),
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
