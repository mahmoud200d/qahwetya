import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails1 extends StatelessWidget {
  const ProductDetails1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Text(
            'BAG',
            style: TextStyle(
              fontFamily: 'Inter-Bold',
              fontSize: 20,
              color: const Color(0xff1e1e1e),
            ),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xffF5F5F5),
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 500,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Container(
                          width: 400,
                          child: Stack(
                            children: [
                              Container(
                                height: 140,
                                width: 360,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(27.5),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        'assets/images/Rectangle.png',
                                        width: 140,
                                        fit: BoxFit.fill,
                                        height: 140,
                                      ),
                                      height: 140,
                                      width: 160,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Espresso',
                                            style: TextStyle(
                                              fontFamily: 'Inter-Bold',
                                              fontSize: 22,
                                              color: const Color(0xff1e1e1e),
                                            ),
                                          ),
                                          Text(
                                            'Blue Ridge Blend',
                                            style: TextStyle(
                                              fontFamily: 'Inter-Medium',
                                              fontSize: 14,
                                              color: const Color(0xffbab9c0),
                                            ),
                                          ),
                                          Text(
                                            '\$ 4.35',
                                            style: TextStyle(
                                              fontFamily: 'Inter-Bold',
                                              fontSize: 14,
                                              color: const Color(0xff02d126),
                                            ),
                                            textAlign: TextAlign.center,
                                            softWrap: false,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 1,
                                bottom: 15,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff845747),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  height: 32,
                                  width: 32,
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 30);
                      },
                      itemCount: 3),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Delivery Charges',
                      style: TextStyle(
                        fontFamily: 'Inter-SemiBold',
                        fontSize: 14,
                        color: const Color(0xffbab9c0),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '\$10.00',
                      style: TextStyle(
                        fontFamily: 'Inter-Bold',
                        fontSize: 14,
                        color: const Color(0xffbab9c0),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Subtotal',
                      style: TextStyle(
                        fontFamily: 'Inter-SemiBold',
                        fontSize: 14,
                        color: const Color(0xffbab9c0),
                      ),
                      softWrap: false,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '\$ 26.35 ',
                      style: TextStyle(
                        fontFamily: 'Inter-Bold',
                        fontSize: 14,
                        color: const Color(0xffbab9c0),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontFamily: 'Inter-SemiBold',
                        fontSize: 14,
                        color: const Color(0xff1e1e1e),
                      ),
                      softWrap: false,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '\$ 36.35',
                      style: TextStyle(
                        fontFamily: 'Inter-Bold',
                        fontSize: 14,
                        color: const Color(0xff1e1e1e),
                      ),
                      softWrap: false,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff02D126),
                        minimumSize: Size(350, 60),
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: Text(
                      'Add To Bag',
                      style: TextStyle(
                        fontFamily: 'Inter-Bold',
                        fontSize: 22,
                        color: const Color(0xffffffff),
                      ),
                    ))
              ],
            )),
        bottomNavigationBar: Container(
          height: 64,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100.0),
              topRight: Radius.circular(100.0),
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: 2,
            type: BottomNavigationBarType.fixed,
            selectedIconTheme:
                IconThemeData(color: Color(0xff02D126), size: 28),
            unselectedIconTheme: IconThemeData(size: 28),
            items: [
              BottomNavigationBarItem(label: '', icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: '', icon: Icon(Icons.favorite)),
              BottomNavigationBarItem(
                  label: '', icon: Icon(Icons.shopping_bag_rounded)),
              BottomNavigationBarItem(label: '', icon: Icon(Icons.person))
            ],
          ),
        ));
  }
}
