import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffcdd16d), Color(0xffbfc36c)]
              // const Color(0xff1c6373),const Color(0xff255566)]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 125.0,
              backgroundImage: AssetImage('images/portfolio_img.jpg'),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Balasubramanian Gopalakrishnan",
              style: TextStyle(
                  fontFamily: 'Satisfy',
                  color: Colors.black87,
                  fontSize: 40,
                  fontWeight: FontWeight.w500
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "desc",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Connect with me", style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.black87,
                fontSize: 14
            ),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            )
          ],
        ),
      ),
    );
  }
}