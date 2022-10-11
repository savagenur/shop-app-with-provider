
import 'package:flutter/cupertino.dart';
import 'package:shop_app/screens/Complete%20Profile/complete_profile_screen.dart';
import 'package:shop_app/screens/Forgot%20Password/forgot_password_screen.dart';
import 'package:shop_app/screens/Login%20Success/login_success_screen.dart';
import 'package:shop_app/screens/OTP/otp_screen.dart';
import 'package:shop_app/screens/Sign%20In/sign_in_screen.dart';
import 'package:shop_app/screens/Sign%20Up/sign_up_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName:(context) =>const SplashScreen(),
  SignInScreen.routeName:(context) =>const SignInScreen(),
  ForgotPasswordScreen.routeName:(context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routName:(context) => const LoginSuccessScreen(),
  SignUpScreen.routeName:(context) => const SignUpScreen(),
  CompleteProfileScreen.routeName:(context) => const CompleteProfileScreen(),
  OtpScreen.routeName:(context) => const OtpScreen(),
};
