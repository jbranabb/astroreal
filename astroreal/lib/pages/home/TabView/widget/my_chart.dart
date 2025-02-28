// import 'package:astroreal/data/bloc/wallets_bar/bloc/container_bloc.dart';
import 'package:astroreal/data/bloc/wallets_bar/bloc/container_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class MyChartBar extends StatefulWidget {
  const MyChartBar({
    super.key,
  });

  @override
  State<MyChartBar> createState() => _MyChartBarState();
}

class _MyChartBarState extends State<MyChartBar> {

     @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<ContainerBloc>().add(ResetEvent());
    Future.delayed(const Duration(milliseconds: 200), (){
    context.read<ContainerBloc>().add(EventIncome(newValue: 70));
    context.read<ContainerBloc>().add(EventExpenses(newValue: 30));
    });
   }  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(style: BorderStyle.solid, color: Colors.grey)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 8,
                          width: 8,
                          decoration: const BoxDecoration(color: Colors.blue),
                        ),
                        const Gap(2),
                        const Text('Income'),
                      ],
                    ),
                    const Text(
                      'Rp1.200.00',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30, // Sesuaikan dengan tinggi teks
                  child: VerticalDivider(
                    color: Colors.grey, // Warna divider
                    thickness: 1, // Ketebalan garis
                    // Jarak antara elemen sebelum & sesudah divider
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 8,
                          width: 8,
                          decoration: const BoxDecoration(color: Colors.red),
                        ),
                        const Gap(2),
                        const Text('Expenses'),
                      ],
                    ),
                    const Text(
                      'Rp200.00',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Balance'),
                const Gap(5),
                Text(
                  'Rp1.000.000',
                  style: TextStyle(
                      color: Colors.blue.shade700, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              height: 90, // Beri ketinggian fixed untuk container
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.end, // Pastikan semua konten rata bawah
                children: [
                  // Bar charts
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment
                        .end, // Penting! Ini membuat bar mulai dari bawah
                    children: [
                      const SizedBox(width: 10),
                      BlocBuilder<ContainerBloc, ContainerState>(
                        builder: (context, income) {
                          return AnimatedContainer(
                            duration: Durations.extralong2,
                            height: income.heightA, // Tinggi bar income
                            width: 25,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5)),
                              color: Colors.blue,
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 15),
                      BlocBuilder<ContainerBloc,ContainerState>(
                        builder: (context, state) {
                          return AnimatedContainer(
                            duration: Durations.extralong2,
                            height: state.heightB, // Tinggi bar expenses (lebih pendek)
                            width: 25,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5)),
                              color: Colors.red,
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                  // const SizedBox(
                  //     height: 2), // Jarak antara bar dan divider
                  // Divider selalu di bawah
                  Container(
                    width: 140,
                    height: 2,
                    color: Colors.grey,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyFinancialAndPeriod extends StatelessWidget {
  const MyFinancialAndPeriod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Youre financial recap',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text(
                'Period',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Gap(3),
              Text(
                '1 Feb 2025 - 27 Feb 2025',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
