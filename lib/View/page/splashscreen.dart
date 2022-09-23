import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:workshop/View/page/login.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: EasySplashScreen(
        logo: Image.asset(
          'image/logo.png',
          height: double.infinity,
          width: double.infinity,


            ),
        backgroundColor: Colors.grey.shade400,
        showLoader: true,
        loadingText: Text("Loading..."),
        navigator: LoginScreen(),
        durationInSeconds: 5,
      ),
    );;
  }
}

