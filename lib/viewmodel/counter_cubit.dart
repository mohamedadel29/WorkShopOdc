import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int counter =0;
  double? width;
  double? height;
 static CounterCubit get(context)=>BlocProvider.of(context);

  void INcrement(){
    counter++;
    emit(countincrement());
  }
  void DEcrement(){
    counter--;
    emit(countdecrement());
  }

}
