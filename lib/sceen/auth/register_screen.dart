import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qahwetya/cubit/states_cubit.dart';

import '../../cubit/cubit.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit = Qahwety.get(context);
    return BlocConsumer<Qahwety,QahwetyState>(
      listener: (context,state){},
      builder: (context,state){
        return  Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      color: const Color(0xff1d1d1d),
                      borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    ),
                    child: Image.asset('assets/images/user-2.png'),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Add profile picture',
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 15,
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'NAME',
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 12,
                    color: const Color(0xffffffff),
                    letterSpacing: 0.8400000000000001,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Color(0xff212121),
                    labelText: 'name here',
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
                SizedBox(
                  height: 20,
                ),
                Text(
                  'EMAIL',
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 12,
                    color: const Color(0xffffffff),
                    letterSpacing: 0.8400000000000001,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Color(0xff212121),
                    labelText: 'email here',
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
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Phone',
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 12,
                    color: const Color(0xffffffff),
                    letterSpacing: 0.8400000000000001,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Color(0xff212121),
                    labelText: 'phone here',
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
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 12,
                    color: const Color(0xffffffff),
                    letterSpacing: 0.8400000000000001,
                    fontWeight: FontWeight.w700,
                  ),
                  softWrap: false,
                ),
                SizedBox(height: 15),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      filled: true,
                      labelStyle: TextStyle(
                        fontFamily: 'Gotham',
                        fontSize: 12,
                        color: const Color(0xffffffff),
                        letterSpacing: 0.8400000000000001,
                        fontWeight: FontWeight.w700,
                      ),
                      fillColor: Color(0xff212121),
                      labelText: 'password here',
                      hintStyle: TextStyle(
                        fontFamily: 'Gotham',
                        fontSize: 17,
                        color: const Color(0xffa2a2a2),
                        fontWeight: FontWeight.w300,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(height: 15,),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(300, 50), primary: Color(0xffFFBB3B)),
                      onPressed: () {
                        cubit.register(name: nameController.text, phone: phoneController.text, email: emailController.text, password: passwordController.text);
                        if(cubit.registers!.status){
                          Fluttertoast.showToast(
                              msg: cubit.registers!.message,
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.green,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                        }else{
                          Fluttertoast.showToast(
                              msg: cubit.registers!.message,
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                        }

                      },
                      child: Text(
                        'REGISTER',
                        style: TextStyle(
                          fontFamily: 'Gotham',
                          fontSize: 14,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      )),
                ),
              ],
            ),
          ),
        );
      },

    );
  }
}
