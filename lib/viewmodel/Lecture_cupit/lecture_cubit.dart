import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:workshop/model/lecturemodel.dart';
import 'package:workshop/model/loginmodel.dart';
import 'package:workshop/viewmodel/network/dio_helper.dart';
import 'package:workshop/viewmodel/network/end_points.dart';


part 'lecture_state.dart';

class LectureCubit extends Cubit<LectureState> {
  LectureCubit() : super(LectureInitial());
  LectureModel? lectureModel;
  static LectureCubit get(context)=>BlocProvider.of(context);
  lectureshow({String? name,String?start,String?end,String?day})async{
   await DioHelper.getData(
       url: lectureEndPoint,
       token:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjM1LCJyb2xlIjo0LCJpYXQiOjE2NjM3NjE1NjYsImV4cCI6MTc1MDE2MTU2Nn0.2FnBdvQps4AiyBKICfZLQemuouQlDXHVDnQBqpsHFNQ").then((value){
      // print(value.data);
         lectureModel= LectureModel.fromJson(value.data);
         print(lectureModel!.message);
      print(lectureModel!.data![1].lectureEndTime);
      emit(LectureDone());
    });
  }
}
