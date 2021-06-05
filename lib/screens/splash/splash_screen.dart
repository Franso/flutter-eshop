import 'package:flutter/material.dart';
import 'package:uishop/screens/splash/components/body.dart';
import 'package:uishop/size_config.dart';

// create splash screen stateless widget
class SplashScreen extends StatelessWidget {
  // const SplashScreen({Key? key}) : super(key: key);
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    // initialize the Configs
    SizeConfig().init(context);

    return Scaffold(
      body: Body(),
    );
  }
}
