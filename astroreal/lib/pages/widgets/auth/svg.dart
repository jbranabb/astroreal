import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Svglog extends StatelessWidget {
  String svgpath;
  double radius;
  Color color;
   Svglog({
    required this.svgpath,
   required this.radius,
   required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
      Container(height: 150,width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ) ,
       ),
      SvgPicture.asset(
        svgpath,
        height: 90,
        width: 90,
      ),
    ]);
  }
}
