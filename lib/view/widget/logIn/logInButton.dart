
import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const LogInButton({Key? key, required this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        padding:const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(text));
  }
}
