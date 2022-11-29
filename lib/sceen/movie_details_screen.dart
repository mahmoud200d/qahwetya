import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/Image.png',
                height: 300,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Column(
                  children: [
                    Text(
                      'Dora and the lost city of gold ',
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        fontSize: 19,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w500,
                        height: 1.368421052631579,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 280,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Movie',
                            style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 14,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            height: 18,
                            width: 2,
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                          Text(
                            'Adventure',
                            style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 14,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          ),
                          Container(
                            height: 18,
                            width: 2,
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                          Text(
                            'Comedy',
                            style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 14,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          ),
                          Container(
                            height: 18,
                            width: 2,
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                          Text(
                            'Family',
                            style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 14,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 100,
                  left: 160,
                  child: Image.asset('assets/images/play-button-2.png'))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            '4.0',
            style: TextStyle(
              fontFamily: 'Gotham',
              fontSize: 33,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.star,
                  color: Color(
                    0xffFFBB3B,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Color(
                    0xffFFBB3B,
                  ),
                ),
                Icon(
                  Icons.star_border,
                  color: Color(
                    0xffFFBB3B,
                  ),
                ),
                Icon(
                  Icons.star_border,
                  color: Color(
                    0xffFFBB3B,
                  ),
                ),
                Icon(
                  Icons.star_border,
                  color: Color(
                    0xffFFBB3B,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
              'Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school. ',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 15,
                color: Color(0xffcbcbcb),
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(160, 40), primary: Color(0xffFFBB3B)),
              onPressed: () {},
              child: Text(
                'WATCH NOW',
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 14,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                ),
              )),
          SizedBox(height: 20,),
          Padding(
            padding:EdgeInsets.only(left: 15),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Cast',
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 15,
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
              return Container(
                child: Column(
                  children: [
                    Container(
                        color: const Color(0xff1f1f1f),
                        height: 140,
                        child: Image.asset('assets/images/Michael Peña.png',fit: BoxFit.cover,height: 130,)),
                    SizedBox(height: 5,),
                    Text(
                      'Michael Peña',
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        fontSize: 12,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w300,
                      ),
                    )




                  ],
                ),
              );
            }, separatorBuilder:(context,index){
                  return SizedBox(width: 5,);
            } , itemCount: 6),
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
  }
}
