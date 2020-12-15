import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:floating_action_row/floating_action_row.dart';

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

  @override
  Widget build(BuildContext context) {
    return Plasma(
      particles: 9,
      foregroundColor: Color(0xff000000),
      backgroundColor: Color(0xff0c5dd7),
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
              SizedBox(height: 40),
              Container(
                child: Image.asset("assets/title.png")
              ),
              Expanded(
                child:
                Container(
                    child: Image.asset("assets/logo.png")
                ),
              ),
              SizedBox(height: 10),
              Container(
                  child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[

                      ]
                    ),
              ),
              Container(
                  child: Text("Players")
              ),
              Container(
                  child:
                  FloatingActionRow(
                    color: Colors.blueAccent,
                    children: <Widget>[
                      FloatingActionRowButton(
                          icon: Icon(Icons.add),
                          onTap: () {}
                      ),
                      FloatingActionRowDivider(),
                      FloatingActionRowButton(
                          icon: Icon(Icons.arrow_forward),
                          onTap: () {}
                      ),
                      FloatingActionRowDivider(),
                      FloatingActionRowButton(
                          icon: Icon(Icons.arrow_back),
                          onTap: () {}
                      ),
                    ],
                  )
              ),
              Container(
                child: RaisedButton(
                  onPressed: () async {},
                  child: const Text('CREATE ROOM'),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () async {},
                  child: const Text('JOIN ROOM'),
                ),
              ),
            ]

        ),
      ), // your UI here
    );
  }
}
