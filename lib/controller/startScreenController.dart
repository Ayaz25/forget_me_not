import 'package:flutter/cupertino.dart';
import 'package:forget_me_not/data/datasource/static/static.dart';
import 'package:forget_me_not/model/constant/appRoutes.dart';
import 'package:get/get.dart';

abstract class StartScreenController extends GetxController{
  next();
  onPageChanged(int index);
}

class StartScreenControllerImp extends StartScreenController{

  late PageController pageController;
  int currentPage = 0;

  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(currentPage, duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

}