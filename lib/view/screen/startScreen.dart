
import 'package:flutter/material.dart';
import 'package:forget_me_not/controller/startScreenController.dart';
import 'package:forget_me_not/view/widget/startScreen/dotPoints.dart';
import 'package:forget_me_not/view/widget/startScreen/startScreenSlider.dart';
import 'package:get/get.dart';
import '../widget/startScreen/startScreenButton.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(StartScreenControllerImp());
    return const Scaffold(
      backgroundColor: Color(0xfff7f7f5),
      body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: StartScreenSlider()
              ),
              Expanded(
                  child: Column(
                    children:[
                      DotPoints(),
                      Spacer(flex: 1),
                      StartButton(),
              ],))
            ],
          )
      )
    );
  }
}
