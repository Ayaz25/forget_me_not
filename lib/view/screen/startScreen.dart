
import 'package:flutter/material.dart';
import 'package:forget_me_not/view/widget/startScreen/dotPoints.dart';
import 'package:forget_me_not/view/widget/startScreen/startScreenSlider.dart';
import '../widget/startScreen/startScreenButton.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: startScreenSlider()
              ),
              Expanded(
                  child: Column(
                    children:[
                      dotPoints(),
                      Spacer(flex: 1),
                      startButton(),
              ],))
            ],
          )
      )
    );
  }
}
