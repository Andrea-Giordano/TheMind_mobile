import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_mind/com/kdev/themobilemind/AppColors.dart';
import 'package:the_mind/com/kdev/themobilemind/Fonts.dart';
import 'package:the_mind/com/kdev/themobilemind/Sizes.dart';

class JoinRoomDialog extends StatefulWidget {
  final BuildContext mainContext;

  JoinRoomDialog({
    @required this.mainContext,
  });

  @override
  _JoinRoomDialogState createState() =>
      _JoinRoomDialogState(mainContext: mainContext);
}

class _JoinRoomDialogState extends State<JoinRoomDialog> {

  final BuildContext mainContext;

  _JoinRoomDialogState({@required this.mainContext}) {}

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
                  SizedBox(height: 10),
                  Container(
                    width: 200,
                    height: 40,
                    child: new TextFormField(
                      textAlign: TextAlign.center,
                      onSaved: (String value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      decoration: new InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        hintText: "Room code",
                        hintStyle: TextStyle(color: AppColors.whiteText),
                        fillColor: AppColors.whiteTextField,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: AppColors.textFieldBorder, width: 2.0),
                        ),
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      style: new TextStyle(
                          color: AppColors.whiteTextField,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 200,
                    height: 40,
                    child: new TextFormField(
                      textAlign: TextAlign.center,
                      onSaved: (String value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      decoration: new InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        hintText: "Your name",
                        hintStyle: TextStyle(color: AppColors.whiteText),
                        fillColor: AppColors.whiteText,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: AppColors.textFieldBorder, width: 2.0),
                        ),
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      style: new TextStyle(
                          color: AppColors.whiteTextField,
                          fontWeight: FontWeight.bold),
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
                        'JOIN',
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
