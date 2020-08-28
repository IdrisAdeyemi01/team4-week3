import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
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
        color: Color(0xFFFEFCF5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Image.asset('images/about.png'),
              title: Text('About',
              style: (TextStyle(
                fontSize: 24,
              )),),
            ),
            Text('Description',
            ),
            Text("Whether its copywriting a document, or publishing a document, without the rightful owner's consent is Plagiarism. Its a dime a dozen these days, that most people steal other's content without permission, taking all the credits as well, due to the fact that, they couldn't come up with their own ideas and resort to publishing a document or an article written by another person, a common reason for this, is to beat deadlines or avoid excess workload."),
          Text("With our online Check-it-out Plagiarism app, you have zero worries knowing if a document, proposal, or even an article is plagiarized. All you need do is to download our app and get started.")],
        ),
      ),
    );
  }
}
