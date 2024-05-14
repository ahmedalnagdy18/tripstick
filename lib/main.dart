import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:tripstick/features/home/presentation/cubit/home_cubit_cubit.dart';
import 'package:tripstick/features/home/presentation/pages/home.dart';
import 'package:tripstick/injection.dart';

import 'features/home/domian/usecases/usecase.dart';

void main() {
  setupinjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) =>
            HomeCubitCubit(homeUsecase: sl.get<HomeUsecase>())..review(),
        child: const HomePage(),
      ),
    );
  }
}
