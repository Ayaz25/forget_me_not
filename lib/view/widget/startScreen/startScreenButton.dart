
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class startButton extends StatelessWidget {
  const startButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin:const EdgeInsets.only(bottom: 50),
        child: MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            padding:const EdgeInsets.symmetric(horizontal: 80, vertical: 0),
            textColor: Colors.white,
            onPressed: (){},
            color: Colors.blue,
            child:const Text("Continue")))
    ;
  }
}
