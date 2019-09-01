import 'package:flutter_web/material.dart';
import 'package:portfolio/responsive_widget.dart';
import 'dart:html' as html;

final projectsbg = const Color(0xfffcfcfc);

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "PROJECTS",
                  textScaleFactor: 2.5,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          ResponsiveWidget.isSmallScreen(context)
              ? Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    width: ResponsiveWidget.isSmallScreen(context)
                        ? MediaQuery.of(context).size.height * 0.65
                        : MediaQuery.of(context).size.width * 0.65,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ProjectsImage(),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Icon(
                                Icons.brightness_1,
                                size: 20,
                              ),
                            ),
                            Text(
                              "Improve Metal Pattern Surface\nFinish Using Modern Technologies\n- Steel Authority of India Limited\n(Bhilai) ",
                              textScaleFactor: 1.3,
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
                              child: Icon(
                                Icons.brightness_1,
                                size: 20,
                              ),
                            ),
                            GestureDetector(
                              child: Text(
                                "[Substratum] BlueDragoon",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              onTap: () {
                                html.window.open(
                                    "https://play.google.com/store/apps/details?id=com.anandabasak.extendedUI&hl=en",
                                    "bluedragoon");
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Icon(
                                Icons.brightness_1,
                                size: 20,
                              ),
                            ),
                            GestureDetector(
                              child: Text(
                                "Tuik Web Browser",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              onTap: () {
                                html.window.open(
                                    "https://play.google.com/store/apps/details?id=com.anandroidstudios.myapplication&hl=en_IN",
                                    "tuik");
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Icon(
                                Icons.brightness_1,
                                size: 20,
                              ),
                            ),
                            GestureDetector(
                              child: Text(
                                "[CMTE] Puzzled UI Theme (Decrepated)",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              onTap: () {
                                html.window.open(
                                    "https://www.apksum.com/app/puzzled-ui-cm-theme/com.anandabasak.lightui",
                                    "puzzledui");
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Icon(
                                Icons.brightness_1,
                                size: 20,
                              ),
                            ),
                            GestureDetector(
                              child: Text(
                                "Semantic Segmentation of Objects\nin Image - Using DeepLab V3+",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              onTap: () {
                                html.window.open(
                                    "https://github.com/anandabasak/DeepLabV3-_semantic_segmentation",
                                    "semseg");
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Icon(
                                Icons.brightness_1,
                                size: 20,
                              ),
                            ),
                            GestureDetector(
                              child: Text(
                                "To-Do Tasks App for Android\nwith Alarm Support (In-Progress)",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              onTap: () {
                                html.window.open(
                                    "https://github.com/anandabasak/TodoApplication",
                                    "todo");
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Icon(
                                Icons.brightness_1,
                                size: 20,
                              ),
                            ),
                            Text(
                              "Tic Tac Toe Game with AI Support",
                              textScaleFactor: 1.3,
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
                              child: Icon(
                                Icons.brightness_1,
                                size: 20,
                              ),
                            ),
                            Text(
                              "Political Quiz App - Google Assistant",
                              textScaleFactor: 1.3,
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
                              child: Icon(
                                Icons.brightness_1,
                                size: 20,
                              ),
                            ),
                            Text(
                              "Self Driving Car Model using OpenCV\n (In-Progress)",
                              textScaleFactor: 1.3,
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
                              child: Icon(
                                Icons.brightness_1,
                                size: 20,
                              ),
                            ),
                            Text(
                              "UBER Clone App - Go Road\n(In-Progress)",
                              textScaleFactor: 1.3,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
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
                                "Improve Metal Pattern Surface Finish Using Modern Technologies\n- Steel Authority of India Limited (Bhilai) ",
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
                              GestureDetector(
                                child: Text(
                                  "[Substratum] BlueDragoon",
                                  textScaleFactor: 1.7,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                onTap: () {
                                  html.window.open(
                                      "https://play.google.com/store/apps/details?id=com.anandabasak.extendedUI&hl=en",
                                      "bluedragoon");
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(Icons.brightness_1),
                              ),
                              GestureDetector(
                                child: Text(
                                  "Tuik Web Browser",
                                  textScaleFactor: 1.7,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                onTap: () {
                                  html.window.open(
                                      "https://play.google.com/store/apps/details?id=com.anandroidstudios.myapplication&hl=en_IN",
                                      "tuik");
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(Icons.brightness_1),
                              ),
                              GestureDetector(
                                child: Text(
                                  "[CMTE] Puzzled UI Theme (Decrepated)",
                                  textScaleFactor: 1.7,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                onTap: () {
                                  html.window.open(
                                      "https://www.apksum.com/app/puzzled-ui-cm-theme/com.anandabasak.lightui",
                                      "puzzledui");
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(Icons.brightness_1),
                              ),
                              GestureDetector(
                                child: Text(
                                  "Semantic Segmentation of Objects in Image - Using DeepLab V3+",
                                  textScaleFactor: 1.7,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                onTap: () {
                                  html.window.open(
                                      "https://github.com/anandabasak/DeepLabV3-_semantic_segmentation",
                                      "semseg");
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(Icons.brightness_1),
                              ),
                              GestureDetector(
                                child: Text(
                                  "To-Do Tasks App for Android with Alarm Support (In-Progress)",
                                  textScaleFactor: 1.7,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                onTap: () {
                                  html.window.open(
                                      "https://github.com/anandabasak/TodoApplication",
                                      "todo");
                                },
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
                                "Tic Tac Toe Game with AI Support",
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
                                "Political Quiz App - Google Assistant",
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
                                "Self Driving Car Model using OpenCV (In-Progress)",
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
                                "UBER Clone App - Go Road (In-Progress)",
                                textScaleFactor: 1.7,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ProjectsImage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}

class ProjectsImage extends StatelessWidget {
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
            image: AssetImage("19222.png"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ));
  }
}
