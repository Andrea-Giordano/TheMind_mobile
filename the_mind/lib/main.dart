import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'com/kdev/themind/frontend/dialogs/CreateRoomDialog.dart';

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
                SizedBox(height: 30.0),
                Container(
                    child: Image.asset("assets/title.png")
                ),
                Expanded(
                  child:
                  Container(
                      child: Image.asset("assets/logo.png")
                  ),
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
                          colors: <Color>[Colors.black54, Colors.indigoAccent],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 200.0, minHeight: 40.0), // min sizes for Material buttons
                        alignment: Alignment.center,
                        child: const Text(
                          'CREATE ROOM',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.white60, fontWeight: FontWeight.bold),
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
                    child: Ink(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[Colors.black54, Colors.indigoAccent],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 200.0, minHeight: 40.0), // min sizes for Material buttons
                        alignment: Alignment.center,
                        child: const Text(
                          'JOIN ROOM',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.white60, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 40,
                  child:
                  new TextFormField(
                    textAlign: TextAlign.center,
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    decoration: new InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintText: "Room code",
                      hintStyle: TextStyle(color: Colors.white60),
                      fillColor: Colors.white,
                      enabledBorder: const OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide: const BorderSide(color: Colors.indigoAccent, width: 2.0),
                      ),
                    ),
                    validator: (val) {
                      if(val.length==0) {
                        return "Cannot be empty";
                      }else{
                        return null;
                      }
                    },
                    keyboardType: TextInputType.text,
                    style: new TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
              ]
          ),
        ), // your UI here
      ),
    );
  }

  _createNewRoomDialog(
      {
        title: "CREATE ROOM",
        description: "Share the room code",
      }) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) => CreateRoomDialog(
        title: title,
        description: description,
        roomCode: "CODICE",
        mainContext: _appContext
      ),
    );
  }
}
