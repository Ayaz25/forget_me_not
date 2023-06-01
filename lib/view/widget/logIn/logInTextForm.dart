
import 'package:flutter/material.dart';

class LogInTextForm extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData iconData;
  final TextEditingController? myController;
  const LogInTextForm({Key? key,
    required this.hintText,
    required this.labelText,
    required this.iconData,
    this.myController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(bottom: 25),
      child: TextFormField(
        controller: myController,
        decoration: InputDecoration(
            hintStyle:const TextStyle(fontSize: 12),
            hintText: hintText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
                margin:const EdgeInsets.symmetric(horizontal: 9),
                child: Text(labelText)
            ),
            suffixIcon: Icon(iconData),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            )
        ),

      ),
    );
  }
}
