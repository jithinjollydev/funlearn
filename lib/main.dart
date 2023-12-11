import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:funlearn/homepage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePageView(),
  ));
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      //this widget determine the duration for thepage to exist
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomePageView(),
        ),
      );
    });
    return const Scaffold(
      body: Center(
          child: AutoSizeText(
        //widegt to change text size according to screen size
        "Hello", //the text to be displayed
        maxFontSize: 140, //the max size for the text
        style: TextStyle(
            color: Colors
                .grey), //the parameters here determine the style the text is displayed
        minFontSize: 70, //the minimum font size the text should keep
      )),
    );
  }
}
