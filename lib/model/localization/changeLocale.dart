
import 'dart:ui';
import 'package:forget_me_not/model/services/services.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {

  Locale? language;
  MyServices myServices = Get.find();
  
  changeLanguage(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString("lang", langCode);
    Get.updateLocale(locale);
  }
  @override
  void onInit() {
    String? sharedPrefLanguage = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLanguage == "De") {
      language = const Locale("De");
    } else if (sharedPrefLanguage == "En") {
      language = const Locale("En");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}