// ignore_for_file: avoid_print

import 'package:astroreal/pages/home/TabView/widget/menu_button.dart';
import 'package:astroreal/pages/home/TabView/widget/my_chart.dart';
import 'package:astroreal/pages/home/TabView/widget/mydebit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyTabBarView1 extends StatefulWidget {
  const MyTabBarView1({
    super.key,
  });

  @override
  State<MyTabBarView1> createState() => _MyTabBarView1State();
}


class _MyTabBarView1State extends State<MyTabBarView1> {
  @override
 
  @override
  Widget build(BuildContext context) {
    // print('build');
    double univesalSizeHorizontal = 10;
    double univesalSizeHeigh = 130;
    var widthBody = MediaQuery.of(context).size.width;
    var heightBody = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            const Gap(20),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              width: widthBody,
              height: heightBody,
              child: Column(
                children: [
                  const Gap(10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Text(
                          'Youre transaction accounts',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                  const Gap(5),
                  MyDebits(
                      univesalSizeHeigh: univesalSizeHeigh,
                      widthBody: widthBody,
                      univesalSizeHorizontal: univesalSizeHorizontal),
                  const Gap(5),
                  const MyFinancialAndPeriod(),
                   const MyChartBar(
                   ),
                  const MyMenuButtonAndTop(),
                ],
              ),
            ),
          ],
        )),
        floatingActionButton: SizedBox(
          width: 100,
          height: 40,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/images/qris.png'),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
