import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_mind/com/kdev/themind/AppColors.dart';
import 'package:the_mind/com/kdev/themind/Fonts.dart';
import 'package:the_mind/com/kdev/themind/Sizes.dart';

class CreateRoomDialog extends StatefulWidget {
  final String description = "Share code";
  String roomCode;

  final BuildContext mainContext;

  CreateRoomDialog({
    @required this.roomCode,
    @required this.mainContext,
  });

  @override
  _CreateRoomDialogState createState() => _CreateRoomDialogState(
      description: description, roomCode: roomCode, mainContext: mainContext);
}

class _CreateRoomDialogState extends State<CreateRoomDialog> {
  final String description, roomCode;

  final BuildContext mainContext;

  _CreateRoomDialogState({@required this.description,
    @required this.roomCode,
    @required this.mainContext}) {}

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => true,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.dialogRoundness),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: dialogContent(context),
      ),
    );
  }

  dialogContent(BuildContext context) {
    return Container(
        width: 300,
        height: 250,
        decoration: BoxDecoration(
            color: AppColors.dialogBackground,
            borderRadius:
                BorderRadius.all(Radius.circular(Sizes.dialogRoundness))),
        child: Column(
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
                      child: Text(description,
                          style: TextStyle(
                              fontSize: Fonts.dialogTextFontSize,
                              fontFamily: Fonts.textFont,
                              letterSpacing: 1.0,
                              color: AppColors.whiteText,
                              fontWeight: FontWeight.bold))),
                  SizedBox(height: 20),
                  Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: AppColors.buttonColor,
                          borderRadius: BorderRadius.all(
                              Radius.circular(Sizes.buttonRoundness))),
                      width: 125,
                      child: Text(
                        "XJ6RT",
                        style: TextStyle(
                            fontSize: Fonts.dialogTextFieldFontSize,
                            color: AppColors.whiteTextField,
                            letterSpacing: 3.0,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                  SizedBox(height: 20),
                  Container(
                    child: ClipOval(
                      child: Material(
                        color: Colors.transparent, // button color
                        child: InkWell(
                          splashColor: Colors.transparent, // splash color
                          onTap: () {}, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.share,
                                  size: 55, color: AppColors.whiteText), // icon
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: AppColors.buttonColor,
                          borderRadius: BorderRadius.all(
                              Radius.circular(Sizes.buttonRoundness))),
                      width: 125,
                      constraints: const BoxConstraints(
                          maxWidth: Sizes.dialogButtonWidth,
                          minHeight: Sizes.dialogButtonHeight),
                      // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        "START",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: Fonts.textFont,
                            letterSpacing: 1.0,
                            fontSize: Fonts.dialogButtonFontSize,
                            color: AppColors.whiteText,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ]));
  }
}
