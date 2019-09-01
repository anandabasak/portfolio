import 'package:flutter_web/material.dart';
import 'package:portfolio/responsive_widget.dart';

final colorbg1 = const Color(0xffffffff);

class Achievements extends StatefulWidget {
  @override
  _AchievementsState createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "ACHIEVEMENTS",
                  textScaleFactor: 2.5,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          ResponsiveWidget.isSmallScreen(context)
              ? Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            AchievementsImage(),
                          ],
                        ),
                      ),
                      Container(
                        width: ResponsiveWidget.isSmallScreen(context)
                            ? MediaQuery.of(context).size.height * 0.65
                            : MediaQuery.of(context).size.width * 0.65,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Icon(Icons.brightness_1,size: 20,),
                                ),
                                Text(
                                  "Google India Challenge Scholarship\n2018 Recipient",
                                  textScaleFactor: 1.4,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Icon(Icons.brightness_1,size: 20,),
                                ),
                                Text(
                                  "Facebook Secure and Private AI\nScholarship Recipient",
                                  textScaleFactor: 1.4,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Icon(Icons.brightness_1,size: 20,),
                                ),
                                Text(
                                  "XDA Honor Hub - Top Developer\n(Dec 2018 - Jan 2019)",
                                  textScaleFactor: 1.4,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Icon(Icons.brightness_1,size: 20,),
                                ),
                                Text(
                                  "Google Cloud Platform -\n Quest Leader",
                                  textScaleFactor: 1.4,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            AchievementsImage(),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(Icons.brightness_1),
                              ),
                              Text(
                                "Google India Challenge Scholarship 2018 Recipient",
                                textScaleFactor: 1.7,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(Icons.brightness_1),
                              ),
                              Text(
                                "Facebook Secure and Private AI Scholarship Recipient",
                                textScaleFactor: 1.7,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(Icons.brightness_1),
                              ),
                              Text(
                                "XDA Honor Hub - Top Developer (Dec 2018 -Jan 2019)",
                                textScaleFactor: 1.7,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(Icons.brightness_1),
                              ),
                              Text(
                                "Google Cloud Platform - Quest Leader",
                                textScaleFactor: 1.7,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}

class AchievementsImage extends StatelessWidget {
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
          shape: BoxShape.rectangle,
          image: DecorationImage(
            image: AssetImage("projects.png"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ));
  }
}
