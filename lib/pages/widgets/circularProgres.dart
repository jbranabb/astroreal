import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CircularProgres extends StatefulWidget {
  const CircularProgres({super.key});

  @override
  State<CircularProgres> createState() => _CircularProgresState();
}

class _CircularProgresState extends State<CircularProgres> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Stack(
          children: [
            // blur
            BackdropFilter(filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
            )),
            //progres
           LottieBuilder.asset('assets/lottie/loading.json'),
          ],
      ),
    ));
  }
}