
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qahwetya/cubit/cubit.dart';
import 'package:qahwetya/cubit/states_cubit.dart';
import 'package:qahwetya/sceen/donwloads_screen.dart';

import 'package:qahwetya/sceen/profile_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit=Qahwety.get(context);
    return BlocConsumer<Qahwety,QahwetyState>(
      listener: (context, state){},
      builder: (context,state){
        return Scaffold(
          backgroundColor: Colors.black,
          body: cubit.screen[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,
            onTap: (index){
              cubit.changeBottomNavigationBar(index);



            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xff1A1A1A),
            selectedItemColor: Color(0xffFFBB3B),
            unselectedItemColor: Colors.white,
            selectedLabelStyle: TextStyle(
              fontFamily: 'Gotham',
              fontSize:10,
              color: const Color(0xffffb224),
              fontWeight: FontWeight.w700,
              height: 1,
            ),
            unselectedLabelStyle: TextStyle(
              fontFamily: 'Gotham',
              fontSize: 10,
              color: const Color(0xffffb224),
              fontWeight: FontWeight.w700,
            ),

            items: [
              BottomNavigationBarItem(
                  label: 'Home',

                  icon: Icon(Icons.home,size: 30,)),
              BottomNavigationBarItem(
                  label: 'srarch',
                  icon: Icon(Icons.search,size: 30,)),
              BottomNavigationBarItem(
                  label: 'Downlond',
                  icon: Icon(Icons.download_rounded,size: 30,)),
              BottomNavigationBarItem(
                  label: 'prefile',
                  icon: Icon(Icons.person,size: 30,)),
            ],
          ),
        );
      },

    );
  }
}
