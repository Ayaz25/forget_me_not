
import 'package:flutter/material.dart';

class LogInTextBody extends StatelessWidget {
  final String bodyText;
  const LogInTextBody({Key? key, required this.bodyText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(bodyText,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1),
    );
  }
}
