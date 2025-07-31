// ignore_for_file: avoid_unnecessary_containers, sort_child_properties_last, avoid_printimport 'package:astroreal/pages/auth/login/login.dart';
import 'package:astroreal/data/bloc/onboarding/onboarding_cubit.dart';
import 'package:astroreal/pages/auth/login/login.dart';
import 'package:astroreal/pages/widgets/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

PageController _controller = PageController();
// bool isLastPage = false;

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    // OnboardingCubit bools = context.read<OnboardingCubit>();
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              context.read<OnboardingCubit>().checklastpage(index);
            },
            children: [
              MyBoarding(
                  'Welcome',
                  'Kenali Bagaimana Teknology Kami Bekerja Untuk Memudahkan Keseharian Anda',
                  'assets/lottie/onboarding3.json'),
              MyBoarding(
                  'Siap Jelajahi Fitur Kami?',
                  'Temukan Berbagai Fitur Canggih Kami Yang Siap Melayani Anda',
                  'assets/lottie/onboarding2.json'),
              MyBoarding(
                  'Let`s Dive',
                  'Nikmati Pengalamanan Terbaik Dengan Fitur Canggih Kami, Mari Mulai',
                  'assets/lottie/onboarding1.json'),
            ],
          ),
          Container(
              // color: Colors.red,
              alignment: Alignment(0, 0.95),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BlocBuilder<OnboardingCubit, bool>(
                      builder: (context, state) {
                        return state
                            ? TextButton(
                                onPressed: () {
                                  _controller.jumpToPage(0);
                                },
                                child: const Icon(
                                  Icons.repeat,
                                  size: 20,
                                  color: Colors.grey,
                                ))
                            : TextButton(
                                onPressed: () {
                                  _controller.nextPage(
                                    curve: Curves.easeInOut,
                                    duration: Durations.long1,
                                  );
                                },
                                child: const Text('Next',
                                    style: TextStyle(color: Colors.grey)));
                      },
                    ),
                    SmoothPageIndicator(
                        effect: SwapEffect(
                            activeDotColor: Colors.blue.shade700,
                            dotColor: Colors.grey.shade300),
                        controller: _controller,
                        count: 3),
                    BlocBuilder<OnboardingCubit, bool>(
                      builder: (context, islastpage) {
                        return islastpage
                            ? TextButton(
                                onPressed: () {
                                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> LoginPage()));
                                },
                                child: Text('Done',
                                    style: TextStyle(
                                        color: Colors.blue.shade900,
                                        fontWeight: FontWeight.bold)))
                            : TextButton(
                                onPressed: () {
                                  _controller.jumpToPage(2);
                                },
                                child: Text(
                                  'Skip',
                                  style: TextStyle(color: Colors.grey),
                                ));
                      },
                    )
                  ],
                ),
              ))
        ],
      ),
  );
  }
}
