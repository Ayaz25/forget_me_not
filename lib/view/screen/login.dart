
import 'package:flutter/material.dart';
import 'package:forget_me_not/view/widget/logIn/LogInTextBody.dart';
import 'package:forget_me_not/view/widget/logIn/logInTextForm.dart';
import 'package:forget_me_not/view/widget/logIn/logInTextTitle.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:const Color(0xfff7f7f5),
        elevation: 0.0,
        title: Text('Sign In', style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black45)),
      ),
      body: Container(
        padding:const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: ListView(
          children: const [
            SizedBox(height: 20),
            LogInTextTitle(text: "Welcome Back"),
            SizedBox(height: 20),
            LogInTextBody(bodyText: "Sign In With Your Email And Password OR Continue With Social Media"),
            SizedBox(height: 60),
            LogInTextForm(
                hintText: "Enter Your Email",
                labelText: "Email",
                iconData: Icons.email_outlined),
            LogInTextForm(
                hintText: "Enter Your Password",
                labelText: "Password",
                iconData: Icons.lock_outline)

          ],
        ),
      ),
    );
  }
}
