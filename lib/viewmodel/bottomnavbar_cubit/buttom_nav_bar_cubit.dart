import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:workshop/View/page/home.dart';
import 'package:workshop/View/page/news.dart';
import 'package:workshop/View/page/settings.dart';

part 'buttom_nav_bar_state.dart';

class ButtomNavBarCubit extends Cubit<ButtomNavBarState> {
  ButtomNavBarCubit() : super(ButtomNavBarInitial());
  static ButtomNavBarCubit get(context)=>BlocProvider.of(context);
    int SelectedIndex=0;
  static final List<Widget> NavBar=<Widget>[
     Home(),
      News(),
     SettingsScreen(),
  ];
  void change( {int? index=0}){
   SelectedIndex=index!;
  emit(ButtomNavBarchange());
}
}
