import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:workshop/model/registermodel.dart';
import 'package:workshop/model/registermodel.dart';
import 'package:workshop/viewmodel/network/dio_helper.dart';
import 'package:workshop/viewmodel/network/end_points.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  RegisterModel? registerModel;
  static RegisterCubit get(context)=>BlocProvider.of(context);
  UserLogin({required String email,required String password,required String name,required String phone}){

    emit(RegisterLoadingState());
    DioHelper.postData(
        url: registerEndPoint,
        data: {
          'email':email,
          'password':password,
          'name':name,
          'phoneNumber':phone,

        }).then((value)
    {
      print(value);
      registerModel=registerModel?.toJson() as RegisterModel?;
      print(registerModel?.message);
      emit(RegisterSuccessState(registerModel!));
    }).catchError((error){
      print(error.toString());
      emit(RegisterErrorsState(error));

    });
  }
  bool ispassword=true;
  IconData suffix=Icons.visibility_outlined;
  void changepassword(){
    ispassword =! ispassword;
    suffix = ispassword ?Icons.visibility_outlined:Icons.visibility_off_outlined;
    emit(changepasswordState());
  }

}
