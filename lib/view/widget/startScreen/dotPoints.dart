
import 'package:flutter/material.dart';
import '../../../data/datasource/static/static.dart';

class dotPoints extends StatelessWidget {
  const dotPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(onBoardingList.length,
                (index) => AnimatedContainer(
                margin: const EdgeInsets.only(right: 5),
                duration:const Duration(milliseconds: 900),
                width: 6,
                height:6,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(6))))
      ],
    );
  }
}
