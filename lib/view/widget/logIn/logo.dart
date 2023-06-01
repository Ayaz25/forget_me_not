

import 'package:flutter/material.dart';
import 'package:forget_me_not/model/constant/imageAsset.dart';

class LogInLogo extends StatelessWidget {
  const LogInLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(ImageAsset.logo, height: 100, width: 100,);
  }
}
