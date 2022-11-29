import 'dart:ffi';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qahwetya/api_settings/api_seetings.dart';
import 'package:qahwetya/api_settings/dio_helper.dart';
import 'package:qahwetya/cubit/states_cubit.dart';
import 'package:qahwetya/model/forgot_password.dart';
import 'package:qahwetya/model/login_model.dart';
import 'package:qahwetya/sceen/donwloads_screen.dart';
import 'package:qahwetya/sceen/home_screen1.dart';
import 'package:qahwetya/sceen/profile_screen.dart';
import 'package:qahwetya/sceen/search_screen.dart';

class Qahwety extends Cubit<QahwetyState> {
  Qahwety() : super(InitialState());

  static Qahwety get(context) => BlocProvider.of(context);

  void registerUser(
      {required String name, required String email, required String password}) {
    emit(LoadingRegisterStateState());
    DioHelper.postData(
            url: ApiSettings.registerUser,
            data: {'name': name, 'email': email, 'password': password})
        .then((value) {
      print(value.data);

      emit(SuccessRegisterStateState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorRegisterStateState());
    });
  }

  void getCategories() {
    emit(LoadingGetCategoriesState());
    DioHelper.getDate(url: ApiSettings.categories).then((value) {
      print(value.data);
      emit(SuccessGetCategoriesState());
    }).catchError((error) {
      emit(ErrorGetCategoriesState());
    });
  }

  void getHomeData() {
    emit(LoadingGetHomeDataState());
    DioHelper.getDate(url: ApiSettings.home).then((value) {
      print(value.data);
      emit(SuccessGetHomeDataState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorGetCategoriesState());
    });
  }

  void getFavorites() {
    emit(LoadingGetFavoritesState());
    DioHelper.getDate(url: ApiSettings.favorites).then((value) {
      print(value.data);
      emit(SuccessGetFavoritesState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorGetCategoriesState());
    });
  }

  void getBanners() {
    emit(LoadingGetBannersState());
    DioHelper.getDate(url: ApiSettings.banners).then((value) {
      print(value.data);
      emit(SuccessGetBannersState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorGetBannersState());
    });
  }

  void getSettings() {
    emit(LoadingGetBannersState());
    DioHelper.getDate(url: ApiSettings.settings).then((value) {
      print(value.data);
      emit(SuccessGetSettingState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorGetSettingState());
    });
  }

  LoginModel? loginModel;

  void login(String email, String password) {
    emit(LoadingLoginStateState());
    DioHelper.postData(
        url: ApiSettings.loginUser,
        data: {'email': email, 'password': password}).then((value) {
      print(value.data);
      loginModel = LoginModel.fromJson(value.data);

      emit(SuccessLoginStateState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorLoginStateState());
    });
  }

  LoginModel? registers;

  void register(
      {required String name,
      required String phone,
      required String email,
      required password}) {
    emit(LoadingRegisterStateState());
    DioHelper.postData(url: ApiSettings.registerUser, data: {
      'name': name,
      'phone': phone,
      'email': email,
      'password': password
    }).then((value) {
      print(value.data);
      registers = LoginModel.fromJson(value.data);
      emit(SuccessRegisterStateState());
    }).catchError((onError) {
      print(onError.toString());
      emit(SuccessRegisterStateState());
    });
  }

  ForgotPasswordModel? forgotPasswordModel;

  void forgotPassword({required String email}) {
    emit(LoadingForgotPasswordState());
    DioHelper.postData(url: ApiSettings.forgotPassword, data: {'email': email})
        .then((value) {
          forgotPasswordModel=ForgotPasswordModel.fromJson(value.data);
      print(value.data);
      emit(SuccessForgotPasswordStat());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorForgotPasswordState());
    });
  }

  void getUsers(){
    emit(LoadingRegisterStateState());
    DioHelper.getDate(url: ApiSettings.users).then((value){
      print(value.data);
      emit(SuccessGetUsersState());
    }).catchError((error){
      print(error.toString());
      emit(ErrorGetUsersState());
    });



  }

 void getCountries(){
    emit(LoadingGetCountriesState());
    DioHelper.getDate(url:ApiSettings.countries).then((value) {
      print(value.data);
      emit(SuccessGetCountriesState());


    }).catchError((error){
      print(error.toString());
      emit(ErrorGetCountriesState());
    });

  }

  int currentIndex=0;
  List<Widget> screen =[HomeScreen1(),SearchScreen(),DownloadsScreen(),ProfileScreen()];

  void changeBottomNavigationBar(int index) {
    currentIndex = index;
    emit(ChangeBottomNavigationBarState());
  }

  LoginModel? logoutUser;
  void logout(){
    emit(LoadingLogoutState());
    DioHelper.postData(url:ApiSettings.logout, data: {'':''},token:'DG000w44nWPNvvAenZbliKOleO44ZzB8x87MHa5fU4hK1IZqf40IdJjobBtyrlxGR6F7fR').then((value) {


      logoutUser=LoginModel.fromJson(value.data);
      print(logoutUser!.message);
      emit(SuccessLogoutState());

    }).catchError((onError){
      print(onError.toString());
      emit(ErrorLogoutState());

    });

  }


}
