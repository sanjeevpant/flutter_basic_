import 'dart:async';

import 'package:classico_as/appRoute.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget{

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
  super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, AppRoutes.pageSignInRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: .min,
          children: [
            FlutterLogo(size: 100),
            SizedBox(height: 20),
            Text("Walcano", style: TextStyle(fontSize: 22,fontWeight: .bold))
          ],
        ),
      ),
    );
  }
}