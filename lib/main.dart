import 'package:flutter/material.dart';
import 'package:forget_me_not/model/localization/translation.dart';
import 'package:forget_me_not/model/services/services.dart';
import 'package:forget_me_not/routes.dart';
import 'package:forget_me_not/view/screen/language.dart';
import 'package:forget_me_not/view/screen/login.dart';
import 'package:forget_me_not/view/screen/startScreen.dart';
import 'package:get/get.dart';

import 'model/localization/changeLocale.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          headline2: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
          bodyText1: TextStyle(height: 2, color: Colors.black45, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(height: 2, color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 14),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const Language(),
      //home:const Login(),
      routes: routes,
    );
  }
}
