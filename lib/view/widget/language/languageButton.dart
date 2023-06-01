
import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  final String buttonName;
  final void Function()? onPressed;
  const LanguageButton({Key? key, required this.buttonName, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        color:const Color(0xff1f889d),
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(buttonName),
      ));
  }
}
