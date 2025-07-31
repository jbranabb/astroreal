// ignore_for_file: must_be_immutable, avoid_print

import 'package:astroreal/pages/auth/authOtp/authotp.dart';
import 'package:astroreal/pages/widgets/auth/mybuttonprovider.dart';
import 'package:astroreal/pages/widgets/auth/mytextfield.dart';
import 'package:astroreal/pages/widgets/circularProgres.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController passC = TextEditingController();
  TextEditingController emailC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // CircularProgres(),
          const SizedBox(
            height: 20,
          ),
          const Icon(Icons.rocket, size: 80),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Register Here ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Text(
            'We need to Lorem IPSm',
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                MyTextFiled(
                  label: 'Username',
                  controller: emailC,
                  obscure: false,
                ),
                 const SizedBox(
                  height: 10,
                ),
                MyTextFiled(
                  label: 'Email',
                  controller: emailC,
                  obscure: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                MyTextFiled(
                  label: 'Password',
                  controller: passC,
                  obscure: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                
                MyTextFiled(
                  label: 'Confirm Passwords',
                  controller: passC,
                  obscure: true,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Radio(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 'SingingCharacter',
                    groupValue: ' ',
                    onChanged: (SingingCharacter) {}),
                const Text(
                  'I accept the trems and privacy policy',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ButtonStyle( backgroundColor: WidgetStateProperty.all(Colors.white)),
              onPressed: () async{
              print('hello');
              Navigator.of(context).push(MaterialPageRoute(builder: (builder)=> OtpRegister()));
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                child: Text(
                  'Register',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              )),
              const SizedBox( height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              const Text('already have a account?', style: TextStyle(color: Colors.grey),),
              TextButton(onPressed: (){
                print('i work here');
                Navigator.of(context).pop();
              }, child: const Text('Sign in Here'))
                ],
              ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Divider()),
                SizedBox(
                  width: 10,
                ),
                Text('Or Continue With'),
                SizedBox(
                  width: 10,
                ),
                Expanded(child: Divider()),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyButtonProviderAuth(Colors.blue, Icons.facebook),
             const MyButtonProviderGoogle(),
              MyButtonProviderAuth(Colors.black, Icons.apple),
            ],
          ),
        ],
      ),
    ));
  }
}



