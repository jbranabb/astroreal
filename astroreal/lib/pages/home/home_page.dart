// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var widthMe = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      animationDuration: Durations.long1,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(preferredSize: Size.fromHeight(60), child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white
              ),
              height: 40,
              width: widthMe * 0.90,
                child: TabBar(
                  mouseCursor: MouseCursor.defer,
                  splashBorderRadius: BorderRadius.circular(20),
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                  indicatorPadding: EdgeInsets.only(left: 2, top: 6, right: 2, bottom: 6),
                  tabAlignment: TabAlignment.fill,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200
                  ),
                  indicatorColor: Colors.red,
                  dividerColor: Colors.transparent,
                  tabs: const [
                    Center(child: Text('Insight'),),
                    Center(child: Text('Grow'),),
                    Center(child: Text('Modals'),),
                  ],),
              ),
            ),
          )),
        body: 
          TabBarView(
            children: [
            Center(child: Text('pingnie'),),
            Center(child: Text('Cantik'),),
            Center(child: Text('Sekali'),),
          ],),
        ),
      );
  }
}