import 'package:flutter/material.dart';
class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Image.asset('assets/images/Image.png',fit: BoxFit.cover,height: 500,width: double.infinity,),
        SizedBox(height: 5,),
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
          height: 5,
        ),
        Container(
          width:280,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                height: 15,
                width: 3,
                color: Colors.white,
              ),
              Text(
                'Adventure',
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 14,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                height: 15,
                width: 3,
                color: Colors.white,
              ),
              Text(
                'Comedy',
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 14,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                height: 15,
                width: 3,
                color: Colors.white,
              ),
              Text(
                'Family',
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 14,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                ),
              )

            ],
          ),
        ),
        SizedBox(height:5 ,),
        Align(
          alignment: Alignment.topLeft,
          child: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Watching',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 15,
                color: Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),

            ),
          ),
        ),
        SizedBox(height: 10,),
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

                          child: Image.asset('assets/images/1b082d8eb9969933599707375c70f246.png',fit: BoxFit.cover,height:120 ,)),
                      SizedBox(height: 5,),





                    ],
                  ),
                );
              }, separatorBuilder:(context,index){
            return SizedBox(width: 5,);
          } , itemCount: 6),
        )

      ],
    );
  }
}
