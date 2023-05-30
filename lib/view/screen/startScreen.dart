
import 'package:flutter/material.dart';
import '../../data/datasource/static/static.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: onBoardingList.length,
          itemBuilder: (context, i) => Column(
            children: [
              const SizedBox(height: 80),
              Text(onBoardingList[i].title!,
                style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
              Image.asset(onBoardingList[i].image!,
              width: 1000,
              height: 400),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(onBoardingList[i].body!,
                    textAlign: TextAlign.center,
                    style:const TextStyle(fontWeight: FontWeight.normal, fontSize: 15, height: 2))),
              Container(
                  height: 40,
                  margin: const EdgeInsets.only(top: 50.0),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                    padding:const EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                      textColor: Colors.white,
                      onPressed: (){}, color: Color(0x7E1842E7), child:const Text("GET STARTED")))
              ],
          )
        ) ,
      )
    );
  }
}
