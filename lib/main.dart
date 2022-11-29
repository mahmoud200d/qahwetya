
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qahwetya/api_settings/dio_helper.dart';
import 'package:qahwetya/cubit/cubit.dart';
import 'package:qahwetya/cubit/states_cubit.dart';
import 'package:qahwetya/sceen/auth/forgot_password_screen_screen.dart';
import 'package:qahwetya/sceen/auth/login_screen.dart';
import 'package:qahwetya/sceen/auth/register_screen.dart';
import 'package:qahwetya/sceen/breakfat_screen.dart';
import 'package:qahwetya/sceen/cart_screen.dart';
import 'package:qahwetya/sceen/home_screen.dart';
import 'package:qahwetya/sceen/home_screen1.dart';
import 'package:qahwetya/sceen/search_screen.dart';
import 'package:qahwetya/sceen/profile_screen.dart';
import 'package:qahwetya/sceen/movie_details_screen.dart';


import 'cubit/copments_cubit.dart';

void main() {
  DioHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Qahwety(),
      child: BlocConsumer<Qahwety, QahwetyState>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            home: const HomeScreen(),
            debugShowCheckedModeBanner: false,
            routes: {
              '/register_screen':(context)=>RegisterScreen(),
              '/home_screen':(context)=>HomeScreen(),


            },
          );
        },
      ),
    );
  }
}
