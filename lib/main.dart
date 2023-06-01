import 'package:flutter/material.dart';
import 'package:forget_me_not/routes.dart';
import 'package:forget_me_not/view/screen/startScreen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          bodyText1:TextStyle(height: 2, color: Colors.black45, fontWeight: FontWeight.bold)
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const StartScreen(),
      routes: routes,
    );
  }
}
