import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:the_mind/com/kdev/themind/AppColors.dart';

class JoinRoomDialog extends StatefulWidget {
  final String description = "Code";

  final BuildContext mainContext;

  JoinRoomDialog({
    @required this.mainContext,
  });

  @override
  _JoinRoomDialogState createState() =>
      _JoinRoomDialogState(description: description, mainContext: mainContext);
}

class _JoinRoomDialogState extends State<JoinRoomDialog> {
  final String description;

  final BuildContext mainContext;

  _JoinRoomDialogState(
      {@required this.description, @required this.mainContext}) {}

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => true,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
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
            border: Border.all(color: AppColors.dialogBorder, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(20))),
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
                          color: AppColors.dialogForeground,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 125,
                      constraints: const BoxConstraints(
                          maxWidth: 200.0, minHeight: 40.0),
                      // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        'JOIN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
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
