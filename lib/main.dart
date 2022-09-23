import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:workshop/View/page/Signup.dart';
import 'package:workshop/View/page/addnotes.dart';
import 'package:workshop/View/page/home.dart';
import 'package:workshop/View/page/lectures.dart';
import 'package:workshop/View/page/midterms.dart';
import 'package:workshop/View/page/navbar.dart';
import 'package:workshop/View/page/notes.dart';
import 'package:workshop/View/page/splashscreen.dart';
import 'package:workshop/View/page/term_condition.dart';
import 'View/page/events.dart';
import 'View/page/login.dart';
import 'View/page/news.dart';
import 'View/page/our_partner.dart';
import 'View/page/sections.dart';
import 'View/page/settings.dart';
import 'View/page/support.dart';
import 'viewmodel/network/dio_helper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized() ;
 await DioHelper.init();


  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

      ),
      debugShowCheckedModeBanner: false,
      home: Term_Condition(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => LoginScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('image/logo.png'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: LinearProgressIndicator(
                      color: Colors.deepOrange,
                      //value:,
                    ),
                  ),
                ],
              ),
            ],
        ),

    );
  }

}


