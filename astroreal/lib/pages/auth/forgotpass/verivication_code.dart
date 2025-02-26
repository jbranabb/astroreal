// ignore_for_file: avoid_print

import 'package:astroreal/pages/auth/forgotpass/new_password.dart';
import 'package:astroreal/pages/widgets/auth/mytextfield.dart';
import 'package:astroreal/pages/widgets/auth/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationCode extends StatelessWidget {
  VerificationCode({super.key});
  TextEditingController emailForgotC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verif Youre Email'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Svglog(
              svgpath: 'assets/svg/svg3.svg',
              radius: 20,
              color: Colors.white10,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'We Already Send The Verification Code To user@example.com',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Please Open Youre Inbox And Input 4 Digit Verifition Code Below',
              textAlign: TextAlign.center,
            ),
           const Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtpField(),
                  OtpField(),
                  OtpField(),
                  OtpField(),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               GestureDetector(
                child:  Text('Resend Code',style: TextStyle(color: Colors.blue.shade800),),
                onTap: (){print('im working');},
              ),
              const SizedBox(width: 5,),
              const Text('3:00')
              ]
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => ChangeNewPass()));
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'Verif',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class OtpField extends StatelessWidget {
  const OtpField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 52,
      height: 54,
      child: TextField(
        onChanged: (value){
          if(value.length == 1){
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: const InputDecoration(),
      ),
    );
  }
}
