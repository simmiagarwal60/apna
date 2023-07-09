import 'dart:async';

import 'package:apna/screens/signIn_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    super.initState();
    
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignInScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: Colors.blue,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient:
            LinearGradient(colors: [Colors.purple, Colors.deepPurple])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
                width: 800,
                child: Image.asset('assets/images/infinity.png', width: double.infinity, color: Colors.blue,)),
            Text('Infinity', style: TextStyle(fontSize: 80, fontWeight: FontWeight.w700, color: Colors.white, fontFamily: 'bakery'),)
          ],
        ),
      ),
    );
  }
}
