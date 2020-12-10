
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("I'll wait"),
    onPressed: () {
      Navigator.of(context).pop(); // dismiss dialog
    },
  );
  Widget continueButton = FlatButton(
      child: Text("No waiting!"),
      onPressed: null
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("You have clicked on button"),
    content: Text(
        "Sorry, the functinality is not ready yet. Please wait for new updates."),
      actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}