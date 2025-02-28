import 'package:astroreal/data/bloc/onboarding/onboarding_cubit.dart';
import 'package:astroreal/data/bloc/wallets_bar/bloc/container_bloc.dart';
// import 'package:astroreal/data/bloc/wallets_bar/bloc/container_bloc.dart';
import 'package:astroreal/data/bloc/wallets_bar/container_cubit.dart';
import 'package:astroreal/pages/auth/login/login.dart';
import 'package:astroreal/pages/home/home_page.dart';
import 'package:astroreal/pages/onboarding/onboarding.dart';
import 'package:astroreal/pages/widgets/circularProgres.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
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
      ],
        child: MaterialApp(
          theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade700)),
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        ),
      );
  }
}
