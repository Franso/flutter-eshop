import 'package:flutter/material.dart';
import 'package:uishop/screens/sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  // const SignInScreen({Key? key}) : super(key: key);
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Sign In",
            // textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
