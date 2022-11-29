
import 'package:flutter/material.dart';
class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
         children: [
           Image.asset('assets/images/Bitmap.png',width: double.infinity,height: 550,fit:BoxFit.cover,),
           Align(
             alignment: Alignment.bottomCenter,
             child: Container(
               padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
               height: 420,
               width: double.infinity,
               decoration: BoxDecoration(
                 color: const Color(0xffffffff),
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(31.0),
                   topRight: Radius.circular(31.0),
                 ),
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     'Espresso',
                     style: TextStyle(
                       fontFamily: 'Inter-Bold',
                       fontSize: 35,
                       color: const Color(0xff1e1e1e),
                     ),
                   ),
                   SizedBox(height: 10,),
                   Container(
                     width: 150,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Icon(Icons.star,color: Color(0xffF59D2D),),
                         Icon(Icons.star,color: Color(0xffF59D2D),),
                         Icon(Icons.star,color: Color(0xffF59D2D),),
                         Icon(Icons.star,color: Color(0xffF59D2D),),
                         Icon(Icons.star,color: Color(0xffF59D2D),),


                       ],
                     ),
                   ),
                   SizedBox(height: 32,),
                   Text(
                     'Description',
                     style: TextStyle(
                       fontFamily: 'Inter-Bold',
                       fontSize: 20,
                       color: const Color(0xff1e1e1e),
                     ),
                   ),
                   SizedBox(height: 5,),
                   Text(
                     'Espresso coffe drink with a small amount of\nmilk,usuallyy foamed. In Italian, macchiato\nmeans “stained” or “spotted so the literal\ntranslation of caffe macchiato is “stained” or\n“marked coffee”',
                     style: TextStyle(
                       fontFamily: 'Inter-Medium',
                       fontSize: 16,
                       color: const Color(0xffbab9c0),
                       height: 1.375,
                     ),
                     textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                     softWrap: false,
                   ),
                   SizedBox(height: 50,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Column(

                         children: [
                           Text(
                             'Price',
                             style: TextStyle(
                               fontFamily: 'Inter-Medium',
                               fontSize: 12,
                               color: const Color(0xffbab9c0),
                             ),
                           ),
                           Text(
                             '\$4.35',
                             style: TextStyle(
                               fontFamily: 'Inter-Bold',
                               fontSize: 24,
                               color: const Color(0xff1e1e1e),
                             ),
                             softWrap: false,
                           )
                         ],
                       ),
                       ElevatedButton(
                           style: ElevatedButton.styleFrom(
                             primary: Color(0xff02D126),
                             minimumSize: Size(190, 60),
                             shape: BeveledRectangleBorder(
                               borderRadius: BorderRadius.circular(5)
                             )
                           ),
                           onPressed: (){}, child: Text(
                         'Add To Bag',
                         style: TextStyle(
                           fontFamily: 'Inter-Bold',
                           fontSize: 22,
                           color: const Color(0xffffffff),
                         ),


                       ))
                     ],
                   )

                 ],
               ),
             ),
           ),
           Positioned(
             bottom: 400,
             right: 20,
             child: Container(
               height: 62,
               width: 62,
               decoration: BoxDecoration(
                 color: const Color(0xffffffff),
                 borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                 boxShadow: [
                   BoxShadow(
                     color: const Color(0x4f8f8f8f),
                     offset: Offset(0, 2),
                     blurRadius: 10,
                   ),
                 ],
               ),
               child: Icon(Icons.favorite,color: Color(0xff845747),size: 36,),
             ),
           )
         ],
      ),
    );
  }
}
