import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:workshop/model/sectionmodel.dart';
import 'package:workshop/viewmodel/network/dio_helper.dart';
import 'package:workshop/viewmodel/network/end_points.dart';

part 'section_state.dart';

class SectionCubit extends Cubit<SectionState> {
  SectionCubit() : super(SectionInitial());
  SectionModel? sectionModel;
  static  SectionCubit get(context)=>BlocProvider.of(context);
  Sectioneshow({String? name,String?start,String?end,String?day})async{
    await DioHelper.getData(
        url: sectionEndPoint,
        token:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjM1LCJyb2xlIjo0LCJpYXQiOjE2NjM3NjE1NjYsImV4cCI6MTc1MDE2MTU2Nn0.2FnBdvQps4AiyBKICfZLQemuouQlDXHVDnQBqpsHFNQ").then((value){
      // print(value.data);
      sectionModel= SectionModel?.fromJson(value.data);
      print(sectionModel!.message);
      print(sectionModel!.data![1].sectionDate);
      emit(SectionShow());
    });
  }
}
