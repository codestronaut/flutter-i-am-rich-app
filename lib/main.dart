import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF25222A),
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Color(0xFF3A3642),
        ),
        body: CustomizeScene(),
      ),
    );
  }
}

class CustomizeScene extends StatefulWidget {
  CustomizeScene({Key key}) : super(key: key);

  @override
  _CustomizeSceneState createState() => _CustomizeSceneState();
}

class _CustomizeSceneState extends State<CustomizeScene> {
  int sceneState = 0;
  String sceneImage = 'images/myroom_1st.png';

  @override
  void initState() {
    changeState();
    super.initState();
  }

  void changeState() {
    if (sceneState == 0) {
      sceneImage = 'images/myroom_1st.png';
    } else if (sceneState == 1) {
      sceneImage = 'images/myroom_2nd.png';
    } else {
      sceneImage = 'images/myroom_3rd.png';
    }
  }

  void yellowScene() {
    sceneState = 0;
  }

  void redScene() {
    sceneState = 1;
  }

  void blueScene() {
    sceneState = 2;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(sceneImage),
        ),
        SizedBox(
          height: 64.0,
        ),
        Text(
          'Customize Scene',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        SizedBox(
          height: 32.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 36.0,
              width: 36.0,
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    yellowScene();
                    changeState();
                  });
                },
                shape: CircleBorder(
                  side: BorderSide(
                    width: 2,
                    color: Color(0xFFFFC929),
                    style: BorderStyle.solid,
                  ),
                ),
                color: Color(0xFFFFC929),
              ),
            ),
            SizedBox(
              width: 16.0,
            ),
            Container(
              height: 36.0,
              width: 36.0,
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    redScene();
                    changeState();
                  });
                },
                shape: CircleBorder(
                  side: BorderSide(
                    width: 2,
                    color: Color(0xFFD32F2F),
                    style: BorderStyle.solid,
                  ),
                ),
                color: Color(0xFFD32F2F),
              ),
            ),
            SizedBox(
              width: 16.0,
            ),
            Container(
              height: 36.0,
              width: 36.0,
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    blueScene();
                    changeState();
                  });
                },
                shape: CircleBorder(
                  side: BorderSide(
                    width: 2,
                    color: Color(0xFF3F51B5),
                    style: BorderStyle.solid,
                  ),
                ),
                color: Color(0xFF3F51B5),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
