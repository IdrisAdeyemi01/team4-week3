import 'package:flutter/material.dart';

class DownloadPage extends StatefulWidget {
  @override
  _DownloadPageState createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {

  String _val = 'doc';

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
      body: ListView(
        children: [
          Text('Download report',
            style: TextStyle(
              height: 35,
              fontSize: 26,
              color: Color(0xFFFDB600)
            ),),
          SizedBox(height: 40,),
          Container(
            child: DropdownButton(
                value: _val,
                items: [
                  DropdownMenuItem(
                    child: Text('doc'),
                    value: 'doc',
                  ),
                  DropdownMenuItem(
                    child: Text('docx'),
                    value: 'docx',
                  ),
                  DropdownMenuItem(
                    child: Text('pdf'),
                    value: 'pdf',
                  )
                ],
                onChanged: (value){
                  setState(() {
                    _val = value;
                  });
                }),
          ),
          Center(
            child: RaisedButton(onPressed: null,
            child: Text('Download',),

            ),
          )
        ],
      ),
    );
  }
}
