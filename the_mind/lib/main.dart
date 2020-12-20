import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:the_mind/com/kdev/themind/AppColors.dart';
import 'com/kdev/themind/frontend/dialogs/CreateRoomDialog.dart';
import 'com/kdev/themind/frontend/dialogs/JoinRoomDialog.dart';

void main() {
  runApp(new MaterialApp(
    title: 'TheMind',
    theme: new ThemeData(primarySwatch: Colors.indigo),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Mind',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  BuildContext _appContext;

  @override
  Widget build(BuildContext context) {
    _appContext = context;
    return new Scaffold(
      body: Plasma(
        particles: 9,
        foregroundColor: AppColors.themeForeground,
        backgroundColor: AppColors.themeBackground,
        size: 1.00,
        speed: 6.00,
        offset: 0.00,
        blendMode: BlendMode.hardLight,
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(height: 40.0),
                Container(child: Image.asset("assets/title.png")),
                Expanded(
                  child: Container(child: Image.asset("assets/logo.png")),
                ),
                SizedBox(height: 15.0),
                Container(
                  width: 200,
                  color: Colors.transparent,
                  child: RaisedButton(
                    onPressed: () => {_createNewRoomDialog()},
                    child: Ink(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            AppColors.buttonGradient1,
                            AppColors.buttonGradient2
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 200.0, minHeight: 40.0), // min sizes for Material buttons
                        alignment: Alignment.center,
                        child: const Text(
                          'CREATE ROOM',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: AppColors.whiteText,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  width: 200,
                  color: Colors.transparent,
                  child: RaisedButton(
                    onPressed: () => {_joinRoomDialog()},
                    child: Ink(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            AppColors.buttonGradient1,
                            AppColors.buttonGradient2
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: Container(
                        constraints: const BoxConstraints(
                            maxWidth: 200.0, minHeight: 40.0),
                        // min sizes for Material buttons
                        alignment: Alignment.center,
                        child: const Text(
                          'JOIN',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: AppColors
                              .whiteText, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ]
          ),
        ), // your UI here
      ),
    );
  }

  _createNewRoomDialog() {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) =>
          CreateRoomDialog(
              roomCode: "CODICE",
              mainContext: _appContext
          ),
    );
  }

  _joinRoomDialog() {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) =>
          JoinRoomDialog(
              mainContext: _appContext
          ),
    );
  }
}
