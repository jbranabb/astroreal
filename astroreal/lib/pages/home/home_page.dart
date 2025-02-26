// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var widthMe = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      animationDuration: Durations.long1,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
            flexibleSpace: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('AstroReal', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                      Row(
                        children: [
                          OutlinedButton(
                            
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                              minimumSize: Size(10, 10),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            onPressed: (){}, child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                
                              children: const [
                                Icon(Icons.logout, size: 12,),
                                Gap(2),
                                Text('Log out', style: TextStyle(fontSize: 10),)
                              ],
                                                        ),
                            ))
                        ],
                      )
                    ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: InkWell(
                                borderRadius: BorderRadius.circular(40),
                                  onTap: () {
                                    print('iwods');
                                  },
                                  child: SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image.network(
                                        fit: BoxFit.cover,
                                        'https://randomuser.me/api/portraits/men/10.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Text('Hi',style: TextStyle(fontSize: 13),),
                            Gap(4),
                            Text('User Example', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),), 
                          ],
                        ),
                         Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                            Transform.scale(
                              scale: 1.4,
                              child: IconButton(
                                style: IconButton.styleFrom(
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  minimumSize: Size(5, 5),
                                  iconSize: 18
                                ),
                                onPressed: (){},
                                icon: Icon(Icons.notifications_none_rounded)),
                            ),
                            Transform.scale(
                              scale: 1.4,
                              child: IconButton(
                                style: IconButton.styleFrom(
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  minimumSize: Size(5, 5),
                                  iconSize: 18
                                ),
                                onPressed: (){},
                                icon: Icon(Icons.receipt_long_outlined)),
                            ),
                              ],
                            )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  height: 40,
                  width: widthMe * 0.90,
                  child: TabBar(
                    splashBorderRadius: BorderRadius.circular(20),
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.white,
                    labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    indicatorPadding:
                        EdgeInsets.only(left: 2, top: 6, right: 2, bottom: 6),
                    tabAlignment: TabAlignment.fill,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                    dividerColor: Colors.transparent,
                    unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
                    tabs: const [
                      Center(
                        child: Text('Insight'),
                      ),
                      Center(
                        child: Text('Grow'),
                      ),
                      Center(
                        child: Text('Modals'),
                      ),
                    ],
                  ),
                ),
              ),
            )),
        body: TabBarView(
          children: [
            MyTabBarView1(),
          ],
        ),
      ),
    );
  }
}

class MyTabBarView1 extends StatelessWidget {
  const MyTabBarView1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('dasa'),
      // child: Text('pingnie'),
    );
  }
}
