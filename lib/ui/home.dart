import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  State createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xffcdd16d), Color(0xffbfc36c)]
                    // const Color(0xff1c6373),const Color(0xff255566)]
                    )),
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
                "Distributed systems engineer, Thinker and Go gettter",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
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
                IconButton(
                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                    tooltip: "https://www.linkedin.com/in/balasubramaniangopalakrishnan/",
                    icon: FaIcon(FontAwesomeIcons.linkedin),
                    onPressed: () {
                      _launchURL(
                          "https://www.linkedin.com/in/balasubramaniangopalakrishnan/");
                    }
                ),
                IconButton(
                    tooltip: "balasubramanian.gopalakrishnan@gmail.com",
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                    icon: FaIcon(FontAwesomeIcons.mailBulk),
                    onPressed: () {
                      _launchURL(
                          "mailto://balasubramanian.gopalakrishnan@gmail.com");
                    }
                ),
                IconButton(
                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                    icon: FaIcon(FontAwesomeIcons.twitterSquare),
                    onPressed: () {
                      _launchURL("https://twitter.com/gopalbala");
                    }
                ),

              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Subscribe to my repository / channel", style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.black87,
                fontSize: 14
            ),),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                    tooltip: "https://github.com/gopalbala",
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                    icon: FaIcon(FontAwesomeIcons.githubSquare),
                    onPressed: () {
                      _launchURL("https://github.com/gopalbala");
                    }
                ),
                IconButton(
                    tooltip: "https://www.youtube.com/gopalbala12",
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                    icon: FaIcon(FontAwesomeIcons.youtubeSquare),
                    onPressed: () {
                      _launchURL("https://www.youtube.com/gopalbala12");
                    }
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}