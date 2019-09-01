import 'package:flutter_web/material.dart';
import 'package:portfolio/achievements.dart';
import 'package:portfolio/projects.dart';
import 'package:portfolio/responsive_widget.dart';
import 'dart:html' as html;

import 'bottombar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Portfolio',
      theme: ThemeData(
        backgroundColor: Colors.black,
        fontFamily: "GoogleSansRegular",
      ),
      home: MyHomePage(),
    );
  }
}

final coloraccent = const Color(0xff1976d2);
final colorbg = const Color(0xff121212);

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorbg1,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipPath(
              child: Container(
                color: colorbg,
                child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.height * 0.08),
                    child: AboutMe()),
              ),
              clipper: BottomWaveClipper(),
            ),
            Achievements(),
            Container(color: projectsbg, child: Projects()),
            Bottombar(),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "PORTFOLIO",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              ResponsiveWidget.isSmallScreen(context)
                  ? Row(
                      children: <Widget>[
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 25,
                        )
                      ],
                    )
                  : Row(
                      children: <Widget>[
                        Text('ABOUT',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16)),
                        SizedBox(width: 10),
                        Text('FEATS',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16)),
                        SizedBox(width: 10),
                        Text('PROJECTS',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16)),
                      ],
                    ),
            ],
          ),
          SizedBox(height: 55),
          ResponsiveWidget.isSmallScreen(context)
              ? Container(
                  width: ResponsiveWidget.isSmallScreen(context)
                      ? MediaQuery.of(context).size.height * 0.75
                      : MediaQuery.of(context).size.width * 0.75,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 20, bottom: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Hello World! My name is\n",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200),
                            ),
                            Text(
                              "Ananda Basak\n",
                              textScaleFactor: 4,
                              style: TextStyle(
                                  color: coloraccent,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "residing at Kolkata, Currently\n"
                              "pursuing B.Tech Mechanical Engg,\n"
                              "Love Coding with Coffee",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "------------------------------------------------\n"
                              'Android, Web, Cloud & ML Developer\n'
                              'CMTE & Substratum Themer\n',
                              textScaleFactor: 1.1,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200),
                            ),
                            Column(
                              children: <Widget>[
                                Github(),
                                SizedBox(
                                  width: 10,
                                ),
                                Facebook(),
                                Linkedin(),
                                SizedBox(
                                  width: 10,
                                ),
                                Twitter()
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ProfileImage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 30, bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Hello World! My name is",
                            textScaleFactor: 2.3,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200),
                          ),
                          Text(
                            "Ananda Basak",
                            textScaleFactor: 6,
                            style: TextStyle(
                                color: coloraccent,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "residing at Kolkata, Currently\n"
                            "pursuing B.Tech Mechanical Engg,\n"
                            "Love Coding with Coffee",
                            textScaleFactor: 2.3,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "------------------------------------------------\n"
                            'Android, Web, Cloud & ML Developer\n'
                            'CMTE & Substratum Themer\n',
                            textScaleFactor: 2.2,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200),
                          ),
                          Row(
                            children: <Widget>[
                              Github(),
                              SizedBox(
                                width: 10,
                              ),
                              Facebook(),
                              SizedBox(
                                width: 10,
                              ),
                              Linkedin(),
                              SizedBox(
                                width: 10,
                              ),
                              Twitter()
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          ProfileImage(),
                        ],
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

class Github extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ImageIcon(AssetImage('github.png')),
            SizedBox(
              width: 15,
            ),
            Text("GITHUB", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      borderSide: BorderSide(color: Colors.white, width: 3),
      disabledBorderColor: Colors.white,
      onPressed: () {
        html.window.open("https://github.com/anandabasak/", "github");
      },
    );
  }
}

class Facebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ImageIcon(AssetImage('facebook.png')),
            SizedBox(
              width: 15,
            ),
            Text("FACEBOOK", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      borderSide: BorderSide(color: Colors.white, width: 3),
      disabledBorderColor: Colors.white,
      onPressed: () {
        html.window.open("https://www.facebook.com/masterananda", "facebook");
      },
    );
  }
}

class Linkedin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ImageIcon(AssetImage('linkedin.png')),
            SizedBox(
              width: 15,
            ),
            Text("LINKEDIN", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      borderSide: BorderSide(color: Colors.white, width: 3),
      disabledBorderColor: Colors.white,
      onPressed: () {
        html.window.open(
            "https://www.linkedin.com/in/ananda-basak-1180a2119/", "linkedin");
      },
    );
  }
}

class Twitter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ImageIcon(AssetImage('twitter.png')),
            SizedBox(
              width: 15,
            ),
            Text("TWITTER", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      borderSide: BorderSide(color: Colors.white, width: 3),
      disabledBorderColor: Colors.white,
      onPressed: () {
        html.window.open("https://twitter.com/AnandaBasak", "twitter");
      },
    );
  }
}

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("ab.png"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ));
  }
}
