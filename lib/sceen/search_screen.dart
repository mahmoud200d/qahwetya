
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(

            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search,color: Colors.white,),
              hintStyle: TextStyle(color: Colors.white),
              filled: true,
              fillColor: Color(0xff212121),
              labelText: 'Str',
              labelStyle: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 12,
                color: const Color(0xffffffff),
                letterSpacing: 0.8400000000000001,
                fontWeight: FontWeight.w700,
              ),
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'TV SHOWS',
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 12,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                ),

              ),
              SizedBox(height: 50,),
              SvgPicture.string(
                '<svg viewBox="100.1 136.0 255.3 1.0" ><path transform="translate(5108.0, -290.0)" d="M -4752.54736328125 426.0120239257812 L -5007.88525390625 426.0120239257812" fill="none" fill-opacity="0.36" stroke="#ffffff" stroke-width="1" stroke-opacity="0.36" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ],
          ),
          SizedBox(height: 10,),
          Image.asset('assets/images/Image 2.png'),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'TV SHOWS',
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 12,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                ),

              ),
              SizedBox(height: 50,),
              SvgPicture.string(
                '<svg viewBox="100.1 136.0 255.3 1.0" ><path transform="translate(5108.0, -290.0)" d="M -4752.54736328125 426.0120239257812 L -5007.88525390625 426.0120239257812" fill="none" fill-opacity="0.36" stroke="#ffffff" stroke-width="1" stroke-opacity="0.36" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ],
          ),

        ],
      ),
    );
  }
}
