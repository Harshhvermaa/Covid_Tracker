import 'dart:async';


import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'countrieslistscreen.dart';
import 'mainscreeen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{

late final AnimationController _controller = AnimationController(
  duration: Duration(seconds: 5),
  vsync: this
  )..repeat();

@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  Timer(Duration(milliseconds: 1000), () => Navigator.push(context, MaterialPageRoute(builder: (context) => WorldStates())));
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            AnimatedBuilder(
              animation: _controller, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage("images/virus.png"),fit: BoxFit.cover,height: 200,width: 200,),
                ],
              ),
              builder: ( BuildContext context , Widget? child){
                  return Transform.rotate(
                    child: child,
                    angle: _controller.value *2.0 * math.pi
                    );
              }
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Corona Ticker",style: TextStyle(fontSize: 45.0,fontWeight: FontWeight.bold),),
                ],
              )

          ],
        ),
      ),
    );
  }
}
