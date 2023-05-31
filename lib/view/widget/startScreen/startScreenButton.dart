
import 'package:flutter/material.dart';
import 'package:forget_me_not/controller/startScreenController.dart';
import 'package:get/get.dart';

class StartButton extends GetView<StartScreenControllerImp> {
  const StartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin:const EdgeInsets.only(bottom: 50),
        child: MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            padding:const EdgeInsets.symmetric(horizontal: 80, vertical: 0),
            textColor: Colors.white,
            onPressed: (){
              controller.next();
            },
            color: Colors.blue,
            child:const Text("Continue")))
    ;
  }
}
