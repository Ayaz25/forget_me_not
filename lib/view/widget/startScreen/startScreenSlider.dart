
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/startScreenController.dart';
import '../../../data/datasource/static/static.dart';

class StartScreenSlider extends GetView<StartScreenControllerImp> {
  const StartScreenSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
            children: [
              const SizedBox(height: 50),
              Image.asset(onBoardingList[i].image!),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child:Text(onBoardingList[i].title!,textAlign: TextAlign.center,
                    style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),),
              const SizedBox(height: 30),
              Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child:  Text(onBoardingList[i].body!, textAlign: TextAlign.center,
                    style:const TextStyle(height: 2, color: Colors.black45, fontWeight: FontWeight.bold),))

            ])
    );
  }
}
