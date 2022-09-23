part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class countincrement extends CounterState{}

class countdecrement extends CounterState{}

class changecontainer extends CounterState{}
