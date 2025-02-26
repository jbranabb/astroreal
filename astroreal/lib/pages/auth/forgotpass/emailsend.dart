import 'package:astroreal/pages/auth/forgotpass/verivication_code.dart';
import 'package:astroreal/pages/widgets/auth/mytextfield.dart';
import 'package:astroreal/pages/widgets/auth/svg.dart';
import 'package:flutter/material.dart';

class ForgotPasswords extends StatelessWidget {
  ForgotPasswords({super.key});
  TextEditingController emailForgotC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Passwords'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Svglog(
              svgpath: 'assets/svg/svg1.svg',
              radius: 50,
              color: Colors.grey.shade300,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Please Enter Your Valid Email Address',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const Text(
              'We Will Send Verification Code Through Your Email Addres',
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MyTextFiled(
                  label: 'Email', controller: emailForgotC, obscure: false),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Let Me Try Another Way',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> VerificationCode()));
                },
                child: const Padding(
                  padding:
                       EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'Send',
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
