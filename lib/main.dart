import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_mit/features/home/bloc/clinic_bloc/clinic_bloc.dart';
import 'package:pro_mit/features/home/presentation/pages/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ClinicBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: ScreenUtilInit(
          designSize: const Size(360, 800),
          builder: (context, child) => const HomeScreen(),
        ),
      ),
    );
  }
}
