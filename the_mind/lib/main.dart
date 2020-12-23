import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:the_mind/com/kdev/themobilemind/AppColors.dart';
import 'package:the_mind/com/kdev/themobilemind/Fonts.dart';
import 'package:the_mind/com/kdev/themobilemind/Sizes.dart';
import 'package:the_mind/com/kdev/themobilemind/Pictures.dart';

import 'com/kdev/themobilemind/frontend/dialogs/CreateRoomDialog.dart';
import 'com/kdev/themobilemind/frontend/dialogs/JoinRoomDialog.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
                Container(child: Pictures.title),
                Expanded(
                  child: Container(child: Pictures.logo),
                ),
                SizedBox(height: 15.0),
                RaisedButton(
                  color: AppColors.buttonColor,
                  onPressed: () => {_createNewRoomDialog()},
                  child: Container(
                    constraints: const BoxConstraints(
                        maxWidth: Sizes.mainButtonWidth,
                        maxHeight: Sizes.mainButtonHeight),
                    alignment: Alignment.center,
                    child: const Text(
                      'CREATE ROOM',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: Fonts.textFont,
                          letterSpacing: 1.0,
                          fontSize: Fonts.mainButtonFontSize,
                          color: AppColors.whiteText,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  //  ),
                ),
                SizedBox(height: 15.0),
                RaisedButton(
                  color: AppColors.buttonColor,
                  onPressed: () => {_joinRoomDialog()},
                  child: Container(
                    constraints:
                    const BoxConstraints(maxWidth: Sizes.mainButtonWidth,
                        minHeight: Sizes.mainButtonHeight),
                    // min sizes for Material buttons
                    alignment: Alignment.center,
                    child: const Text(
                      'JOIN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: Fonts.textFont,
                          letterSpacing: 1.0,
                          fontSize: Fonts.mainButtonFontSize,
                          color: AppColors.whiteText,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ]),
        ), // your UI here
      ),
    );
  }

  _createNewRoomDialog() {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) =>
          CreateRoomDialog(mainContext: _appContext),
    );
  }

  _joinRoomDialog() {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) =>
          JoinRoomDialog(mainContext: _appContext),
    );
  }
}
