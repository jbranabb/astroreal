
import 'package:astroreal/data/bloc/menu_devices/bloc/status_device_bloc.dart';
import 'package:astroreal/data/bloc/onboarding/onboarding_cubit.dart';
import 'package:astroreal/data/bloc/wallets_bar/bloc/container_bloc.dart';
import 'package:astroreal/firebase_options.dart';
import 'package:astroreal/pages/onboarding/onboarding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => OnboardingCubit(),),
        BlocProvider(create: (context) => ContainerBloc(),),
        BlocProvider(create: (context) => StatusDeviceBloc(),),
      ],
        child: MaterialApp(
          theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade700)),
          debugShowCheckedModeBanner: false,
          home: const OnBoarding(),
        ),
      );
  }
}
