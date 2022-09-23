import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:workshop/model/loginmodel.dart';
import 'package:workshop/viewmodel/network/dio_helper.dart';
import 'package:workshop/viewmodel/network/end_points.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  LoginModel ?loginmodel;
  static LoginCubit get(context)=>BlocProvider.of(context);
  UserLogin({required String email,required String password}){
    emit(LoginLoadingStates());
    DioHelper.postData(
        url: loginEndPoint,
        data: {
          'email':email,
          'password':password,
        }).then((value)
    {
      print(value);
      if(value.statusCode == 200){
        loginmodel=LoginModel.fromJson(value.data);

        //navigation
        //token = loginmodel.data.accesstoken
      }

      emit(LoginSuccessStates(loginmodel!));
    }).catchError((error){
      print(error.toString());
      emit(LoginErrorsStates(error));

    });
  }
  bool ispassword=true;
  IconData suffix=Icons.visibility_outlined;
  void changepassword(){
    ispassword =! ispassword;
    suffix = ispassword ?Icons.visibility_outlined:Icons.visibility_off_outlined;
    emit(changepasswordStates());
  }
}
