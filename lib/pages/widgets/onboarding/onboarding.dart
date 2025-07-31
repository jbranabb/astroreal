// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class MyBoarding extends StatelessWidget {
String title;
String sub;
String lottie;

   MyBoarding(
    this.title,
    this.sub,
    this.lottie,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          LottieBuilder.asset(lottie, repeat: true,
          reverse: true,
          
          ),
          // Icon(iconData, size: 80,),
          SizedBox(height: 20,),
          Text( title,
          
          textAlign: TextAlign.center,
           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          // SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(sub, textAlign: TextAlign.center,),
          )
        ],
      ),
    );
  }
}
