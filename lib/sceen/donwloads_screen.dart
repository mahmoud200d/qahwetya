import 'package:flutter/material.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              'assets/images/Mask Group 3.png',
              width: 120,
              fit: BoxFit.fill,
            ),
            title: Text(
              'Gotham',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 15,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              '4 Episodes | 5.02GB',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 13,
                color: const Color(0xacffffff),
                fontWeight: FontWeight.w300,
              ),
              softWrap: false,
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: 8);
  }
}
