import 'package:flutter/material.dart';

class SuccessDialog extends StatelessWidget {
  final String message;

  SuccessDialog({required this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Registration Successful'),
      content: Text(message),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}

void showSuccessDialog(BuildContext context, String message, String s, Null Function() param3) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SuccessDialog(message: message);
    },
  );
}

