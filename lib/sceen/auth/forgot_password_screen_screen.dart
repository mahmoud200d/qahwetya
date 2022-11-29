import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qahwetya/cubit/states_cubit.dart';

import '../../cubit/cubit.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit = Qahwety.get(context);
    return BlocConsumer<Qahwety,QahwetyState>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
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
          body: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 100),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/Logo.png'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'FORGOT PASSWORD?',
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 13,
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                  ),
                  softWrap: false,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Enter the email address you used to\ncreate your account and we will email\nyou a link to reset your password',
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 15,
                    color: const Color(0xffbfbfbf),
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'EMAIL',
                    style: TextStyle(
                      fontFamily: 'Gotham',
                      fontSize: 12,
                      color: const Color(0xffffffff),
                      letterSpacing: 0.8400000000000001,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'email must not be empty';
                    }
                    return null;
                  },
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
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 50), primary: Color(0xffFFBB3B)),
                    onPressed: () {
                      cubit.forgotPassword(email: emailController.text);
                      if(cubit.forgotPasswordModel!.status){

                        Fluttertoast.showToast(
                            msg: cubit.forgotPasswordModel!.message,
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
                      'SEND EMAIL',
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    )),
              ],
            ),
          ),
        );
      },

    );
  }
}
