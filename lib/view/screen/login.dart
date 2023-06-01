
import 'package:flutter/material.dart';
import 'package:forget_me_not/view/widget/logIn/LogInTextBody.dart';
import 'package:forget_me_not/view/widget/logIn/logInTextForm.dart';
import 'package:forget_me_not/view/widget/logIn/logInTextTitle.dart';

import '../widget/logIn/logInButton.dart';
import '../widget/logIn/logo.dart';

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
          children: [
            const LogInLogo(),
            const SizedBox(height: 10),
            const LogInTextTitle(text: "Welcome Back"),
            const SizedBox(height: 20),
            const LogInTextBody(bodyText: "Sign In With Your Email And Password OR Continue With Social Media"),
            const SizedBox(height: 30),
            const LogInTextForm(
                hintText: "Enter Your Email",
                labelText: "Email",
                iconData: Icons.email_outlined),
            const LogInTextForm(
                hintText: "Enter Your Password",
                labelText: "Password",
                iconData: Icons.lock_outline),
            const Text("Forget Password", textAlign: TextAlign.center),
            LogInButton(text: "Sign In", onPressed: (){}),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 60),
              child: Row(children: [
                Text("Don't have an account?"),
                InkWell(child: Text("Sing up", style: TextStyle(color: Colors.blue),))
              ],),
            )
          ],
        ),
      ),
    );
  }
}
