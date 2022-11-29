import 'package:flutter/material.dart';

class SallaScreen extends StatelessWidget {
  const SallaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Bitmap.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            height: 580,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.0, -1.0),
                end: Alignment(0.0, 0.128),
                colors: [const Color(0x7f000000), const Color(0x00d8d8d8)],
                stops: [0.0, 1.0],
              ),
            ),
          ),
          Positioned(
            top: 140,
            right: 50,
            child: Column(
              children: [
                Text(
                  'COFFEE',
                  style: TextStyle(
                    fontFamily: 'Inter-Bold',
                    fontSize: 28,
                    color: const Color(0xffffffff),
                  ),
                ),
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: 'Inter-Regular',
                      fontSize: 20,
                      color: const Color(0xffffffff),
                    ),
                    children: [
                      TextSpan(
                        text: 'It’s Great',
                      ),
                      TextSpan(
                        text: ' Day For\nCoffee',
                        style: TextStyle(
                          fontFamily: 'Inter-Bold',
                        ),
                      ),
                    ],
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  softWrap: false,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              height: 610,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(31.0),
                  topRight: Radius.circular(31.0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'All',
                        style: TextStyle(
                          fontFamily: 'Inter-Bold',
                          fontSize: 18,
                          color: const Color(0xff1e1e1e),
                        ),
                        softWrap: false,
                      ),
                      Text(
                        'Cold Coffee',
                        style: TextStyle(
                          fontFamily: 'Inter-Medium',
                          fontSize: 18,
                          color: const Color(0xffbab9c0),
                        ),
                        softWrap: false,
                      ),
                      Text(
                        'Hot Coffee',
                        style: TextStyle(
                          fontFamily: 'Inter-Medium',
                          fontSize: 18,
                          color: const Color(0xffbab9c0),
                        ),
                        softWrap: false,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    style: TextStyle(
                      height: 0.5,
                    ),
                    decoration: InputDecoration(
                        hintText: 'Search your coffee',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  Expanded(
                    child: ListView.separated(itemBuilder: (context,index){
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Image.asset('assets/images/bagel-with-cream-cheese-png-6-transparent.png'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(
                            'Caramel Frappe',
                            style: TextStyle(
                              fontFamily: 'Inter-Bold',
                              fontSize: 20,
                              color: const Color(0xff1e1e1e),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Decaf Colombia',
                            style: TextStyle(
                              fontFamily: 'Inter-Medium',
                              fontSize: 12,
                              color: const Color(0xffbab9c0),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            '\$4.35',
                            style: TextStyle(
                              fontFamily: 'Inter-Bold',
                              fontSize: 20,
                              color: const Color(0xff1e1e1e),
                            ),
                            softWrap: false,
                          )

                        ],),
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(

                            color: const Color(0xff845747),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Icon(Icons.add,color: Colors.white,),

                        )
                      ],);
                    }, separatorBuilder: (context,index){
                      return SizedBox(height: 10,);
                    }, itemCount: 3),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
