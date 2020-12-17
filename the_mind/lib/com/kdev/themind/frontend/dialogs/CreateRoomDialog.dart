import 'dart:ui';
import 'package:flutter/material.dart';


class CreateRoomDialog extends StatefulWidget {
  final String title, description, roomCode;

  final BuildContext mainContext;

  CreateRoomDialog({
    @required this.title,
    @required this.description,
    @required this.roomCode,
    @required this.mainContext,
  });

  @override
  _CreateRoomDialogState createState() => _CreateRoomDialogState(
      description: description,
      title: title,
      mainContext: mainContext);
}

class _CreateRoomDialogState extends State<CreateRoomDialog> {
  final String title, description, roomCode;

  final BuildContext mainContext;

  _CreateRoomDialogState({
    @required this.title,
    @required this.description,
    @required this.roomCode,
    @required this.mainContext
  }) {}


  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
          onWillPop: () async => true,
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 0.0,
            backgroundColor:
            (Theme.of(mainContext).brightness == Brightness.light)
                ? Colors.white
                : Theme.of(mainContext).backgroundColor,
            child: dialogContent(context),
          ),
        );
  }

  dialogContent(BuildContext context) {
    return Container(
      width: 300,
      height: 250,
        decoration: BoxDecoration(
            color: Colors.indigo[900],
            border: Border.all(
              color: Colors.indigoAccent,
              width: 2
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
      child:
      Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // To make the card compact
              children: <Widget>[
                Container(
                    child:
                    Text(
                        description,
                        style: TextStyle(fontSize: 25, color: Colors.white60, fontWeight: FontWeight.bold))
                ),
                SizedBox(height:10),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  child:
                  ClipOval(
                    child: Material(
                      color: Colors.orange, // button color
                      child: InkWell(
                        splashColor: Colors.green, // splash color
                        onTap: () {}, // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.share), // icon
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]
      )
    );
  }

}
