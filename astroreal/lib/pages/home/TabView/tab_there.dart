

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyTabBarView3 extends StatelessWidget {
  const MyTabBarView3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 40,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate: const
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
              itemCount: 10,
              itemBuilder:  (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade100
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('${index + 1}')),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: double.maxFinite,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Text('${index + 1}'),
                    title: const Text('Ke Indomaret'),
                    subtitle: const Text('Pergi Belanja Beli Susu'),
                    trailing:  Column(
                      children: [
                       const Gap(10),
                        const Text('7:00 AM'),
                        Text('Slow', style: TextStyle(color: Colors.blue.shade200),),
                      ],
                    ),
                    onLongPress: () {
                      showBottomSheet(
                        backgroundColor: Colors.amber,
                        enableDrag: true,
                        clipBehavior: Clip.hardEdge,
                        // constraints: BoxConstraints(),
                        sheetAnimationStyle:
                            AnimationStyle(duration:const Duration(seconds: 1)),
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 200,
                            color: Colors.red,
                          );
                        },
                      );
                    },
                  ),
                );
              },
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                icon:const SizedBox(height: 50, child: Icon(Icons.add)),
                title: const Text(
                  'Add New Todo',
                  style: TextStyle(fontSize: 14),
                ),
                content: const TextField(),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        'Cancel',
                        style: TextStyle(fontSize: 12),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Add',
                        style: TextStyle(fontSize: 12),
                      )),
                ],
              );
            },
          );
          // ScaffoldMessenger.of(context).show.
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
