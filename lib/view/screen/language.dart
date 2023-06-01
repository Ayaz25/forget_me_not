
import 'package:flutter/material.dart';
import 'package:forget_me_not/model/constant/appRoutes.dart';
import 'package:forget_me_not/model/localization/changeLocale.dart';
import 'package:get/get.dart';

import '../widget/language/languageButton.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr, style: Theme.of(context).textTheme.headline1),
            const SizedBox(height: 20),
            LanguageButton(buttonName: "De", onPressed: (){
              controller.changeLanguage("De");
              Get.toNamed(AppRoute.startScreen);
            }),
            LanguageButton(buttonName: "En", onPressed: (){
              controller.changeLanguage("En");
              Get.toNamed(AppRoute.startScreen);
            })

          ],
        ),
      ),
    );
  }
}
