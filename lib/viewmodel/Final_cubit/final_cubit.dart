import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:workshop/model/Examsmodel.dart';
import 'package:workshop/viewmodel/network/dio_helper.dart';
import 'package:workshop/viewmodel/network/end_points.dart';

part 'final_state.dart';

class FinalCubit extends Cubit<FinalState> {
  FinalCubit() : super(FinalInitial());
  ExamModel? examModel;
  static FinalCubit get(context)=>BlocProvider.of(context);
  Finalshow({String? name,String?start,String?end,String?day,})async{
    await DioHelper.getData(
      url: examsEndPoint,
      token:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjM1LCJyb2xlIjo0LCJpYXQiOjE2NjM3NjE1NjYsImV4cCI6MTc1MDE2MTU2Nn0.2FnBdvQps4AiyBKICfZLQemuouQlDXHVDnQBqpsHFNQ",
    ).then((value){
      // print(value.data);
      examModel= ExamModel.fromJson(value.data);
      print(examModel!.message);
      print(examModel!.data![1].examSubject);
      emit(FinalDisplay());
    });
  }
}
