import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qahwetya/cubit/cubit.dart';
import 'package:qahwetya/cubit/states_cubit.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit = Qahwety.get(context);
    return BlocConsumer<Qahwety, QahwetyState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              Image.asset('assets/images/Image 1.png'),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(child: Image.asset('assets/images/Logo.png')),
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
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'PASSWORD',
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'password must not be empty';
                          }
                          return null;
                        },
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
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(300, 50),
                                primary: Color(0xffFFBB3B)),
                            onPressed: () {
                              cubit.login(emailController.text,
                                  passwordController.text);
                              if (cubit.loginModel!.status) {
                                Navigator.pushNamed(context, '/home_screen');
                                Fluttertoast.showToast(
                                    msg: cubit.loginModel!.message,
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.green,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              } else {
                                Fluttertoast.showToast(
                                    msg: cubit.loginModel!.message,
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              }
                            },
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 14,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.string(
                            '<svg viewBox="44.6 589.0 80.4 1.0" ><path transform="translate(5061.0, 163.0)" d="M -4936 426 L -5016.4072265625 426" fill="none" fill-opacity="0.36" stroke="#ffffff" stroke-width="1" stroke-opacity="0.36" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                          Text(
                            'Social Logins',
                            style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 14,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SvgPicture.string(
                            '<svg viewBox="44.6 589.0 80.4 1.0" ><path transform="translate(5061.0, 163.0)" d="M -4936 426 L -5016.4072265625 426" fill="none" fill-opacity="0.36" stroke="#ffffff" stroke-width="1" stroke-opacity="0.36" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.string(
                            '<svg viewBox="0.0 0.0 43.8 43.8" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#ffbb3b" /><stop offset="1.0" stop-color="#ffa90a" /></linearGradient></defs><path  d="M 21.90582084655762 0 C 9.827001571655273 0 0 9.826984405517578 0 21.90578269958496 C 0 33.98369979858398 9.827001571655273 43.81156539916992 21.90582084655762 43.81156539916992 C 33.98375701904297 43.81156539916992 43.81164169311523 33.98369979858398 43.81164169311523 21.90578269958496 C 43.81164169311523 9.826984405517578 33.98552322387695 0 21.90582084655762 0 Z M 27.35359764099121 22.67697715759277 L 23.7896900177002 22.67697715759277 C 23.7896900177002 28.37092781066895 23.7896900177002 35.37961578369141 23.7896900177002 35.37961578369141 L 18.50868034362793 35.37961578369141 C 18.50868034362793 35.37961578369141 18.50868034362793 28.43886947631836 18.50868034362793 22.67697715759277 L 15.99832725524902 22.67697715759277 L 15.99832725524902 18.18746566772461 L 18.50868034362793 18.18746566772461 L 18.50868034362793 15.28357791900635 C 18.50868034362793 13.20382499694824 19.49693870544434 9.954047203063965 23.83821868896484 9.954047203063965 L 27.75154876708984 9.969047546386719 L 27.75154876708984 14.32708644866943 C 27.75154876708984 14.32708644866943 25.37355041503906 14.32708644866943 24.91118621826172 14.32708644866943 C 24.44882202148438 14.32708644866943 23.79145240783691 14.55826663970947 23.79145240783691 15.55005359649658 L 23.79145240783691 18.1883487701416 L 27.81507682800293 18.1883487701416 L 27.35359764099121 22.67697715759277 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SvgPicture.string(
                            '<svg viewBox="200.2 613.0 43.8 43.8" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#ffbb3b" /><stop offset="1.0" stop-color="#ffa90a" /></linearGradient></defs><path transform="translate(200.19, 613.0)" d="M 21.90419960021973 43.80839920043945 C 18.9470386505127 43.80839920043945 16.07839012145996 43.22927856445312 13.37790966033936 42.08712005615234 C 10.76953983306885 40.98392105102539 8.427029609680176 39.40457916259766 6.415419578552246 37.39297866821289 C 4.403819561004639 35.38137054443359 2.824479579925537 33.03886032104492 1.721279621124268 30.43049049377441 C 0.5791196227073669 27.73000907897949 -3.997802764388325e-07 24.86136054992676 -3.997802764388325e-07 21.90419960021973 C -3.997802764388325e-07 18.9472599029541 0.5791196227073669 16.0787296295166 1.721279621124268 13.37828922271729 C 2.824499607086182 10.76992988586426 4.403839588165283 8.427399635314941 6.415419578552246 6.415759563446045 C 8.427059173583984 4.404059410095215 10.76957988739014 2.824659585952759 13.37790966033936 1.721409559249878 C 16.07840919494629 0.5791695713996887 18.94705963134766 -3.997802764388325e-07 21.90419960021973 -3.997802764388325e-07 C 24.8613395690918 -3.997802764388325e-07 27.72999000549316 0.5791695713996887 30.43049049377441 1.721409559249878 C 33.038818359375 2.824659585952759 35.38134002685547 4.404059410095215 37.39297866821289 6.415759563446045 C 39.40456008911133 8.427399635314941 40.9838981628418 10.76992988586426 42.08712005615234 13.37828922271729 C 43.22927856445312 16.0787296295166 43.80839920043945 18.9472599029541 43.80839920043945 21.90419960021973 C 43.80839920043945 24.86136054992676 43.22927856445312 27.73000907897949 42.08712005615234 30.43049049377441 C 40.98392105102539 33.03886032104492 39.40457916259766 35.38137054443359 37.39297866821289 37.39297866821289 C 35.38137054443359 39.40457916259766 33.03886032104492 40.98392105102539 30.43049049377441 42.08712005615234 C 27.73000907897949 43.22927856445312 24.86136054992676 43.80839920043945 21.90419960021973 43.80839920043945 Z M 21.84930038452148 9.311399459838867 C 14.93587970733643 9.311399459838867 9.311399459838867 14.93587970733643 9.311399459838867 21.84930038452148 C 9.311399459838867 28.76272010803223 14.93587970733643 34.38719940185547 21.84930038452148 34.38719940185547 C 28.76272010803223 34.38719940185547 34.38719940185547 28.76272010803223 34.38719940185547 21.84930038452148 L 34.38719940185547 19.34189987182617 L 21.84930038452148 19.34189987182617 L 21.84930038452148 24.35669898986816 L 28.94309997558594 24.35669898986816 C 27.87813949584961 27.35727882385254 25.02697944641113 29.37240028381348 21.84930038452148 29.37240028381348 C 17.7010498046875 29.37240028381348 14.32619953155518 25.99754905700684 14.32619953155518 21.84930038452148 C 14.32619953155518 17.7010498046875 17.7010498046875 14.32619953155518 21.84930038452148 14.32619953155518 C 23.64753913879395 14.32619953155518 25.37798881530762 14.97119998931885 26.72189903259277 16.14239883422852 L 30.01679992675781 12.36059951782227 C 27.75935935974121 10.39479923248291 24.85871887207031 9.311399459838867 21.84930038452148 9.311399459838867 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Don’t have an account?',
                          style: TextStyle(
                            fontFamily: 'Gotham',
                            fontSize: 14,
                            color: const Color(0xa3ffffff),
                            fontWeight: FontWeight.w300,

                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                       Align(
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed:(){
                              Navigator.pushNamed(context, '/register_screen');
                            }, child: Text(
                          'REGISTER',
                          style: TextStyle(
                            fontFamily: 'Gotham',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          softWrap: false,
                        )),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
