
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';


// ignore: must_be_immutable
class MyButtonProviderAuth extends StatelessWidget {
    Color? colors;
    IconData icon;
   MyButtonProviderAuth(
    this.colors,
    this.icon, {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      shadowColor: colors,
      elevation: 10,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          print('i work here');
        },
        child:  SizedBox(
          height: 60,
          width: 60,
          child: Icon(
            icon,
            size: 40,
            color: colors,
          ),
          // decoration: ,
        ),
      ),
    );
  }
}

class MyButtonProviderGoogle extends StatelessWidget {
  const MyButtonProviderGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      shadowColor: Colors.amber,
      elevation: 10,
      child: InkWell(
        onTap: (){},
        borderRadius: BorderRadius.circular(20),
        child:  SizedBox(
          height: 60,
          width: 60,
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Image.asset(
              height: 80,
              width: 80,
              'assets/images/google.png'),
          ),
        ),
      ),
    );
  }
}
