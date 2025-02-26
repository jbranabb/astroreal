// ignore_for_file: must_be_immutable, avoid_print

import 'package:astroreal/pages/auth/forgotpass/emailsend.dart';
import 'package:astroreal/pages/auth/regis/register.dart';
import 'package:astroreal/pages/home/home_page.dart';
import 'package:astroreal/pages/widgets/auth/mybuttonprovider.dart';
import 'package:astroreal/pages/widgets/auth/mytextfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController passC = TextEditingController();

  TextEditingController emailC = TextEditingController();
  bool isloading = false;
  // setstate
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
            height: 30,
          ),
          const Icon(Icons.rocket, size: 80),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Frist When We Met ',
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
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ForgotPasswords()));
                }, child: const Text('Forgot your Passwords?'),)
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ButtonStyle( backgroundColor: WidgetStateProperty.all(Colors.white)),
              onPressed: () {
              print('im working here');
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=> const HomePage()));
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                child: Text(
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              )),
              const SizedBox( height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              const Text('not a member?', style: TextStyle(color: Colors.grey),),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RegisterPage()));
                print('i work here');
              }, child: const Text('Register Here'))
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



