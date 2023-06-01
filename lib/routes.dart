
import 'package:flutter/cupertino.dart';
import 'package:forget_me_not/model/constant/appRoutes.dart';
import 'package:forget_me_not/view/screen/login.dart';
import 'package:forget_me_not/view/screen/startScreen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.startScreen: (context) => const StartScreen(),
};