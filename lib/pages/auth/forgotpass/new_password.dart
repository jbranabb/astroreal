// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:astroreal/pages/auth/login/login.dart';
import 'package:astroreal/pages/widgets/auth/mytextfield.dart';
import 'package:astroreal/pages/widgets/auth/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChangeNewPass extends StatefulWidget {
  ChangeNewPass({super.key});

  @override
  State<ChangeNewPass> createState() => _ChangeNewPassState();
}

class _ChangeNewPassState extends State<ChangeNewPass> {
  TextEditingController newPass = TextEditingController();

  TextEditingController newPassAgain = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Passwords'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Svglog(
                  svgpath: 'assets/svg/svg2.svg',
                  radius: 40,
                  color: Colors.grey.shade100),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Now Change Your Passwords',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const Text(
                'New Passwords Must Be Different From Previous Passwords',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFiled(
                  label: 'New Passwords', controller: newPass, obscure: true),
              const SizedBox(
                height: 10,
              ),
              MyTextFiled(
                  label: 'Confirm New Passwords',
                  controller: newPassAgain,
                  obscure: true),
                  const SizedBox(height: 60,),
                  ElevatedButton(onPressed: (){ print('im working here');
                  
                  Navigator.of(context).push(MaterialPageRoute(builder: (builder)=> LoginPage()));
                  }, child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                    child:Text('Submit', style: TextStyle(color: Colors.black),),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
