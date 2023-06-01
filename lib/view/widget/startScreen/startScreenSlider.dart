
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
              const SizedBox(height: 100),
              Image.asset(onBoardingList[i].image!),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child:Text(onBoardingList[i].title!,textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1)),
              const SizedBox(height: 30),
              Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child:  Text(onBoardingList[i].body!, textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText2))

            ])
    );
  }
}
