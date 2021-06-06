import 'package:flutter/material.dart';
// import 'package:uishop/constants.dart';
import 'package:uishop/routes.dart';
import 'package:uishop/screens/splash/splash_screen.dart';
import 'package:uishop/screens/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
