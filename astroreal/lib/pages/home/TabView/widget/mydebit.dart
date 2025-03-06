import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class MyDebits extends StatelessWidget {
  const MyDebits({
    super.key,
    required this.univesalSizeHeigh,
    required this.widthBody,
    required this.univesalSizeHorizontal,
  });

  final double univesalSizeHeigh;
  final double widthBody;
  final double univesalSizeHorizontal;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: univesalSizeHeigh,
              width: widthBody * 0.85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(23),
                      child: SizedBox(
                          height: univesalSizeHeigh,
                          width: widthBody * 0.85,
                          child: LottieBuilder.asset(
                              fit: BoxFit.fill,
                              'assets/lottie/backdropfilter.json'))),
                  Positioned(
                    top: 47,
                    left: 10,
                    child:  Text(
                      '1023 3212 1232 6754',
                      style: GoogleFonts.firaCode(
                        textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white12)
                      ) 
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: univesalSizeHeigh,
          width: widthBody * 0.85,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: univesalSizeHorizontal, top: 8, right: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Wallest',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 1),
                            minimumSize: const Size(2, 1),
                          ),
                          child: const Text(
                            'PRIMARY',
                            style: TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: univesalSizeHorizontal),
                    child: const Text(
                      'Primary Account',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                  const Gap(38),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: univesalSizeHorizontal),
                    child: const Text(
                      'Avalible Balance:',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: univesalSizeHorizontal),
                        child: const Text(
                          'Rp:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      const Text(
                        '100.000',
                        style: TextStyle(color: Colors.white),
                      ),
                      const Gap(5),
                      Icon(
                        Icons.remove_red_eye,
                        size: 15,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
