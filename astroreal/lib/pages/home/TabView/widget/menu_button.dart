
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyMenuButtonAndTop extends StatelessWidget {
  const MyMenuButtonAndTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
    Padding(
      padding:  EdgeInsets.symmetric(horizontal: 28),
      child: Text(
        'Quick Acts',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: GridView.count(
                  shrinkWrap: true, // **Tambahin ini**
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  padding: const EdgeInsets.all(6),
                  children: [
                    MenuButton(
                      apa: () => print('hello 1'),
                      icon: Icons.send,
                      title: 'Transfer',
                    ),
                    MenuButton(
                      apa: () => print('hello 2'),
                      icon: Icons.wallet,
                      title: 'E- Wallet',
                    ),
                    MenuButton(
                      apa: () => print('hello 3'),
                      icon: Icons.savings,
                      title: 'Savings',
                    ),
                  ]),
            ),
          ),
        ]);
  }
}


class MenuButton extends StatelessWidget {
  VoidCallback apa;
  String title;
  IconData icon;
  MenuButton({
    required this.apa,
    required this.title,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            apa();
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(20),
              // backgroundBlendMode: B
            ),
            child: Icon(
              icon,
              color: Color.fromARGB(255, 11, 36, 58),
            ),
            // color: Colors.red,
          ),
        ),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ],
    );
  }
}
