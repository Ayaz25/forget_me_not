
import 'package:flutter/material.dart';
import 'package:forget_me_not/controller/startScreenController.dart';
import 'package:get/get.dart';
import '../../../data/datasource/static/static.dart';

class DotPoints extends StatelessWidget {
  const DotPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StartScreenControllerImp>(
      builder: (controller) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(onBoardingList.length,
                (index) => AnimatedContainer(
                margin: const EdgeInsets.only(right: 5),
                duration:const Duration(milliseconds: 900),
                width: controller.currentPage == index? 15 : 6,
                height:6,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(6))))
      ],
    ));
  }
}
