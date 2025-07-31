import 'package:astroreal/data/bloc/menu_devices/bloc/status_device_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

class MyTabBarView2 extends StatelessWidget {
  const MyTabBarView2({
    super.key,
    required this.widthMe,
  });

  final double widthMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Stack(children: [
            Container(
              height: 80,
              width: widthMe * 0.85,
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                            height: 65,
                            width: 70,
                            child: LottieBuilder.asset(
                                'assets/lottie/dizzy.json')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Belitung',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Sunny',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          '23° C',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
          ]),
          const Gap(10),
          Container(
              height: 115,
              width: widthMe * 0.85,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.grey)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black87),
                            child: Icon(
                              Icons.electrical_services,
                              color: Colors.white,
                              size: 50,
                            )),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Youre Estimated Energy Exespenses this month was \$160',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 30,
                        width: widthMe * 0.6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade400),
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueGrey),
                        child: SizedBox(
                          height: 8,
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                ' 34 %',
                                style: TextStyle(color: Colors.grey.shade100),
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          const Gap(10),
          Text(
            'Devices',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Gap(10),
          SizedBox(
            height: 240,
            child: BlocBuilder<StatusDeviceBloc, StatusDeviceState>(
              builder: (context, state) {
                return GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 10,
                  children: [
                    MenuHome(
                      status: state,
                      isActive: (s) => s.button1,
                      call: () => context.read<StatusDeviceBloc>().add(Tap1()),
                      icon: Icons.ac_unit_outlined,
                    ),
                    MenuHome(
                      status: state,
                      isActive: (s) => s.button2,
                      call: () => context.read<StatusDeviceBloc>().add(Tap2()),
                      icon: Icons.tv,
                    ),
                    MenuHome(
                      status: state,
                      isActive: (s) => s.button3,
                      call: () => context.read<StatusDeviceBloc>().add(Tap3()),
                      icon: Icons.apple_sharp,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          context.read<StatusDeviceBloc>().add(AddMore());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade300)),
                          height: double.maxFinite,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                BlocBuilder<StatusDeviceBloc,
                                    StatusDeviceState>(
                                  builder: (context, state1) {
                                    return Text(
                                      'Add More Devices?',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: state1.addmore
                                            ? Colors.black
                                            : Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    );
                                  },
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IConAddMore(
                                      icon: Icons.add,
                                    ),
                                    IConAddMore(
                                      icon: Icons.list,
                                    ),
                                    IConAddMore(
                                      icon: Icons.alarm,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class IConAddMore extends StatelessWidget {
  IconData icon;
  IConAddMore({
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatusDeviceBloc, StatusDeviceState>(
      builder: (context, state) {
        return Icon(
          icon,
          size: 20,
          color: state.addmore ? Colors.black : Colors.grey,
        );
      },
    );
  }
}

class MenuHome extends StatelessWidget {
  IconData icon;
  VoidCallback call;
  StatusDeviceState status;
  bool Function(StatusDeviceState) isActive;
  MenuHome({
    required this.call,
    required this.icon,
    required this.status,
    required this.isActive,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: call,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey.shade300)),
          height: double.maxFinite,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocBuilder<StatusDeviceBloc, StatusDeviceState>(
                  builder: (context, state) {
                return Icon(
                  icon,
                  size: 50,
                  color: isActive(status) ? Colors.black : Colors.grey,
                );
              })),
        ),
      ),
    );
  }
}
