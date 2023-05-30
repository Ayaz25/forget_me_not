
import 'package:flutter/material.dart';

import '../../data/datasource/static/static.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: onBoardingList.length,
          itemBuilder: (context, i) => Column(
            children: [
              SizedBox(height: 80),
              Text(onBoardingList[i].title!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
              Image.asset(onBoardingList[i].image!,
              width: 800,
              height: 400),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(onBoardingList[i].body!,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, height: 2)))
              ],
          )
        ) ,
      )
    );
  }
}
