import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_myinsta/pages/home_page.dart';
import 'package:flutter_myinsta/pages/signin_page.dart';

class SplashPage extends StatefulWidget {

  static final String id = 'splash_page';
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  _initTimer(){
    Timer(Duration(seconds: 2),(){
      _callHomePage();
    });
  }

  _callHomePage(){
    Navigator.pushReplacementNamed(context, HomePage.id);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(252,175,69,1),
              Color.fromRGBO(245,96,64,1),
            ]
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Center(
                  child: Text(
                    "Instagram",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontFamily: 'Billabong'
                    ),
                  ),
                ),
            ),
            Text(
              "All rights reserved",
              style: TextStyle(color: Colors.white,fontSize: 16),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
