import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String pushName;
  final String buttonText;
  const AppButton({this.pushName, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.of(context)?.pushNamed(pushName);
      },
      child: Text(buttonText),
    );
  }
}
