import 'package:flutter_web/material.dart';
import 'package:portfolio/achievements.dart';

class Bottombar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        color: Colors.black45,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Made with Flutter for Web",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: colorbg1 ,fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text("Ananda Basak © 2019",textScaleFactor: 1.1,
                  style: TextStyle(color: colorbg1 ,fontWeight: FontWeight.w600),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
