
import 'package:flutter/material.dart';
class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Image.asset('assets/images/Bitmap.png',width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color(0x67000000),
          ),
          Positioned(
            top: 150,
            left: 20,
            child: Text(
              'Coffee Club',
              style: TextStyle(
                fontFamily: 'Quesha',
                fontSize: 70,
                color: const Color(0xffffffff),
              ),
            ),
          )
        ],
      ) ,
    );
  }
}