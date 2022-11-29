import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          'BACK',
          style: TextStyle(
            fontFamily: 'Gotham',
            fontSize: 14,
            color: const Color(0xbfffffff),
            fontWeight: FontWeight.w700,
            height: 1.2857142857142858,
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                  child: Image.asset(
                'assets/images/Isabela Moner copy.png',
                width: 270,
                fit: BoxFit.fill,
                height: 350,
              )),
              Positioned(
                bottom: 10,
                left: 130,
                child: Column(
                  children: [
                    Text(
                      'Michael',
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        fontSize: 37,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Peña',
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        fontSize: 25,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w300,
                        height: 1.36,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Michael Peña was born and raised in Chicago, to Nicolasa, a social worker, and Eleuterio Peña, who worked at a button factory. His parents were originally from Mexico. ',
                    style: TextStyle(
                      fontFamily: 'Gotham',
                      fontSize: 15,
                      color: const Color(0xffcbcbcb),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Known for',
                    style: TextStyle(
                      fontFamily: 'Gotham',
                      fontSize: 15,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 5),
                  Expanded(
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            'assets/images/1b082d8eb9969933599707375c70f246.png',fit:BoxFit.fill ,
                            
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 12,
                          );
                        },
                        itemCount: 5),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff1A1A1A),
        selectedItemColor: Color(0xffFFBB3B),
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
          fontFamily: 'Gotham',
          fontSize: 10,
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
              icon: Icon(
                Icons.home,
                size: 30,
              )),
          BottomNavigationBarItem(
              label: 'srarch',
              icon: Icon(
                Icons.search,
                size: 30,
              )),
          BottomNavigationBarItem(
              label: 'Downlond',
              icon: Icon(
                Icons.download_rounded,
                size: 30,
              )),
          BottomNavigationBarItem(
              label: 'prefile',
              icon: Icon(
                Icons.person,
                size: 30,
              )),
        ],
      ),
    );
  }
}
