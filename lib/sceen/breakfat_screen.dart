import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        height: 100,
        width: 50,

        child: Image.asset('assets/images/bagel-with-cream-cheese-png-6-transparent.png',height: 40,),
      ),
    );
  }
}
