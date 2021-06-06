import 'package:flutter/widgets.dart';
import 'package:uishop/screens/forgot_password/forgot_password_screen.dart';
import 'package:uishop/screens/sign_in/sign_in_screen.dart';
import 'package:uishop/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
};
