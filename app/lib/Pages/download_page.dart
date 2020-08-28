import 'package:flutter/material.dart';

class DownloadPage extends StatefulWidget {
  @override
  _DownloadPageState createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {

  String _val = 'doc';
  List<String> dropdownItems = ['doc', 'docx', 'pdf'];

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
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Download report',
            style: TextStyle(
              fontSize: 26,
              color: Color(0xFFFDB600)
            ),),
            SizedBox(height: 15,),
            Container(
              padding : EdgeInsets.only(left: 10, right: 15),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFFFFBFB),
                border: Border.all(
                  color: Colors.black12
                )
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                 isExpanded: true,
                  icon: Icon(Icons.keyboard_arrow_down),
                  value: _val,
                    items: dropdownItems.map<DropdownMenuItem<String>>((String value){
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String newValue){
                    setState(() {
                      _val = newValue;
                    });
                    }),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FlatButton(child: Text('Download now'),
                onPressed: () async{
                 await showDialog(
                   context: context,
                   builder: (BuildContext context){
                    return AlertDialog(
                       title: Text('Do you want to download?'),
                       contentTextStyle: TextStyle(
                         fontSize: 22,
                         fontWeight: FontWeight.w600,
                       ),
                       actions: [
                         FlatButton(
                           onPressed: (){},
                           child: Text('Yes'),
                         ),
                         FlatButton(
                           onPressed: (){},
                           child: Text('No'),
                         )
                       ],
                     );
                   }
                 );
                },),
              ),
            )
          ],
        ),
      ),
    );
  }
}
