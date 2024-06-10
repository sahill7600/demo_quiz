import 'dart:async';
import 'package:demo_nav/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  static String tag = 'splashScreen';

  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 5), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => (WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    //  backgroundColor:Colors.black,
      //const Color(0xFFFFFFFF),
      body: Stack(
        children: <Widget>[
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill,width: double.infinity,),
          const Positioned.fill(

            child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image(image: AssetImage('assets/icons/insignia_logo.png')),
                    SizedBox(height: 80),
                    SizedBox(
                      child: CircularProgressIndicator(
                        valueColor:
                         AlwaysStoppedAnimation<Color>(Colors.black),
                      ),
                      height: 30.0,
                      width: 30.0,
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}