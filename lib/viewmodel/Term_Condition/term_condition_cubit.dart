import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:workshop/model/terms.dart';
import 'package:workshop/viewmodel/network/dio_helper.dart';
import 'package:workshop/viewmodel/network/end_points.dart';

part 'term_condition_state.dart';

class TermConditionCubit extends Cubit<TermConditionState> {
  TermConditionCubit() : super(TermConditionInitial());
  TermsModel?termsModel;
  static TermConditionCubit get(context)=>BlocProvider.of(context);
  Termsshow()async{
    await DioHelper.getData(
        url: termsEndPoint,
        token:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjM1LCJyb2xlIjo0LCJpYXQiOjE2NjM4NDE1NTksImV4cCI6MTc1MDI0MTU1OX0.WCCoKnFhvGj8YAd9SqHY1fHJZNvlmm6l48Me3WgYs8s").then((value){
      // print(value.data);
      termsModel= TermsModel?.fromJson(value.data);
      emit(termsShow());
    });
  }
}
